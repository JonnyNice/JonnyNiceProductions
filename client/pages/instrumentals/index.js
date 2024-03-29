import React, { useState, useEffect, useContext } from 'react';
import CartContext from '../../contexts/CartContext';
import UserContext from '../../contexts/UserContext';
import { useRouter } from 'next/router';
import Link from 'next/link';
import Layout from '../../components/Layout';
import Audio from '../../components/Audio';

export default function Instrumentals () {
    const [instrumentals, setInstrumentals] = useState([]);
    const [cart, setCart] = useContext(CartContext);
    const [searchValue, setSearchValue] = useState("");
    const [user, _setUser] = useContext(UserContext);
    const router = useRouter()
    const [selectedInstrumental, setSelectedInstrumental] = useState(null);
    const [currentAudioUrl, setCurrentAudioUrl] = useState('');
    const [isPlaying, setIsPlaying] = useState(false);
    const [selectedGenre, setSelectedGenre] = useState('');
    const [sortedBeats, setSortedBeats] = useState([]);
    const [isMobile, setIsMobile] = useState(false);

    useEffect(() => {
        const checkIsMobile = () => {
            const userAgent = window.navigator.userAgent;
            setIsMobile(/iPhone|iPad|iPod|Android/i.test(userAgent));
        };

        checkIsMobile();

        window.addEventListener("resize", checkIsMobile);

        return () => {
            window.removeEventListener("resize", checkIsMobile);
        };
    }, []);

    const handleAudioPlay = (audioUrl) => {
        if (currentAudioUrl !== audioUrl) {
            if (currentAudioUrl) {
                const currentAudio = document.querySelector(`audio[src="${currentAudioUrl}"]`);
                currentAudio.pause();
            }
        setCurrentAudioUrl(audioUrl);
        setIsPlaying(true);
        }
    };

    const handleAudioPause = () => {
        setCurrentAudioUrl('');
        setIsPlaying(false);
    };


    useEffect(() => {
        fetch(`/api/instrumentals`)
            .then(res => res.json())
            .then(instrumentals => setInstrumentals(instrumentals))
    }, []);

    const handleClick = (id) => {
        fetch(`/api/carts/${user.cart_id}/orders`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                lease_id: id,
            })
        })
            .then(res => res.json())
            .then(data => {
                console.log(data);
                setCart(items => [...(items || []), data])
                setSelectedInstrumental(id);
                setTimeout(() => {
                    setSelectedInstrumental(null);
                }, 2000);
            })
        }

    const handleSearch = (event) => {
        setSearchValue(event.target.value);
    };

    const filteredBeats = instrumentals.filter((instrumental) => instrumental.title.toLowerCase().includes(searchValue.toLowerCase()));

    useEffect(() => {
        setSortedBeats(instrumentals);
    }, [instrumentals]);

    const handleSortByGenre = () => {
        if (selectedGenre === '') {
            setSortedBeats(filteredBeats);
        } else {
                const sortedInstrumentals = instrumentals.filter(
                (instrumental) => instrumental.genre.name.toLowerCase() === selectedGenre.toLowerCase()
            );
        setSortedBeats(sortedInstrumentals);
        }
    };

    useEffect(() => {
        handleSortByGenre();
    }, [selectedGenre]);

    if (!instrumentals) {
        return <div>Loading...</div>;
    }


    return (
        <Layout className="min-h-screen">
            <div className="flex flex-col items-center justify-center bg-fixed bg-center bg-cover bg-beats p-5 relative">
                <div className="absolute top-0 left-0 right-0 bottom-0 bg-black/50 z-2 w-full h-full fixed"></div>
                    <div className={`p-5 text-white z-[2] text-center ${ isMobile ? "" : "w-[900px]"} flex flex-col `}>
                        <div className="font-bold pt-40">
                            <select
                                className="text-4xl text-center font-bold bg-transparent outline-none"
                                value={selectedGenre}
                                onChange={(e) => setSelectedGenre(e.target.value)}
                            >
                                <option value="">All Genres</option>
                                <option value="Drill">Drill</option>
                                <option value="Trap">Trap</option>
                                <option value="Hip-Hop">Hip-Hop</option>
                                {/* Add more options for other genres */}
                            </select>
                        </div>
                    <div className="flex justify-between">
                        <p className={`${isMobile ? "text-sm" : "text-l"} p-1`}>Select a title to see lease options</p>
                        <form className="mb-6">
                            <input
                            type="text"
                            placeholder="Search by title..."
                            value={searchValue}
                            onChange={handleSearch}
                            className="border border-gray-400 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 bg-transparent p-1"
                            />
                        </form>
                    </div>
                <div className="flex flex-col z-[2] h-4/6 px-5 py-3 border-solid border-2 border-zinc-800 rounded-md p-2">
                {instrumentals && sortedBeats.map((instrumental, index) => {
                    const audioUrl = `https://jonnynice.onrender.com${instrumental.audio_files[0].file}`;
                    return (
                        <div key={instrumental.id} className="p-4">
                            <div className={`border-2 border-slate-800 rounded-lg p-2 relative ${isMobile ? "pt-8" : ""}`}>
                                <div className="flex justify-between items-center">
                                        <div className="relative z-10 ">
                                        <button
                                            onClick={() => {handleClick(instrumental.audio_files[0].lease?.id)}}
                                        >
                                            {selectedInstrumental === instrumental.audio_files[0].lease?.id ? `${instrumental.title}\u00A0added to cart!` : "Add to Cart" }
                                        </button>
                                        </div>
                                            <div className={`absolute inset-x-0 flex items-center justify-center pointer-events-none ${isMobile ? "pb-10" : "pb-1"}`}>
                                                <Link href={`/instrumentals/${instrumental.id}`} >
                                                    <p className='underline font-bold text-xl pointer-events-auto'>{instrumental.title}</p>
                                                </Link>
                                            </div>
                                        <h3>Genre: {instrumental.genre.name}</h3>
                                    </div>
                                    <Audio
                                        audioUrl={audioUrl}
                                        onPlay={() => handleAudioPlay(audioUrl)}
                                        onPause={handleAudioPause}
                                        isPlaying={currentAudioUrl === audioUrl && isPlaying}
                                    />
                                </div>
                            </div>
                            )
                        })}
                    </div>
                </div>
            </div>
        </Layout>
    );
}