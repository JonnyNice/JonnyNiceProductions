import React, { useState } from 'react';

export default function ContractDownload({ name, blobUrl }) {
    const [loading, setLoading] = useState(false);

    const handleDownload = async () => {
        setLoading(true);
            try {
                const response = await fetch(blobUrl);
                const blob = await response.blob();
                const link = document.createElement('a');
                    link.href = window.URL.createObjectURL(blob);
                    link.download = `${name}.pdf`;
                    link.click();
                setLoading(false);
            } catch (error) {
        console.error(error);
        setLoading(false);
        }
    };

    return (
        <button onClick={handleDownload} disabled={loading}>
            {loading ? 'Downloading...' : 'Download Contract'}
        </button>
    );
};
