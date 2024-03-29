Order.destroy_all
Cart.destroy_all
Purchase.destroy_all
User.destroy_all

AudioFile.destroy_all
Instrumental.destroy_all
Genre.destroy_all
Lease.destroy_all

g1 = Genre.create(name: "Drill")
g2 = Genre.create(name: "Trap")
g3 = Genre.create(name: "Hip-Hop")

instrumentals_data = [
  {
    title: "Skills",
    picture: "",
    info: "about this track",
    genre: Genre.all[2],
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Skills.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Skills.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Skills.mp3' }
    ]
  },
  {
    title: "Doctor",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/doctor.wav' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/doctor.wav' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/doctor.wav' }
    ]
  },
  {
    title: "Spin",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Spin.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Spin.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Spin.mp3' }
    ]
  },
  {
    title: "Ritual",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Ritual.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Ritual.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Ritual.mp3' }
    ]
  },
  {
    title: "Idols",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/khxncollab.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/khxncollab.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/khxncollab.mp3' }
    ]
  },
  {
    title: "Comfort Drill",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/comfort drill.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/comfort drill.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/comfort drill.mp3' }
    ]
  },
  {
    title: "Temper",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Temper x ron x allday.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Temper x ron x allday.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Temper x ron x allday.mp3' }
    ]
  },
  {
    title: "Dive",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Dive.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Dive.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Dive.mp3' }
    ]
  },
  {
    title: "Vile",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Vile x train x flemps.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Vile x train x flemps.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Vile x train x flemps.mp3' }
    ]
  },
  {
    title: "Sting",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Sting6.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Sting6.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Sting6.mp3' }
    ]
  },
  {
    title: "Fed Up",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/prophect.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/prophect.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/prophect.mp3' }
    ]
  },
  {
    title: "FML",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/fml.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/fml.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/fml.mp3' }
    ]
  },
  {
    title: "Again",
    picture: "",
    info: "about this track",
    genre: Genre.all[1],
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Again.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Again.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Again.mp3' }
    ]
  },
  {
    title: "Blocked",
    picture: "",
    info: "about this track",
    genre: Genre.all[1],
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Blocked.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Blocked.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Blocked.mp3' }
    ]
  },
  {
    title: "Crazy",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/crazy.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/crazy.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/crazy.mp3' }
    ]
  },
  {
    title: "Angels",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Angels.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Angels.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Angels.mp3' }
    ]
  },
  {
    title: "Ride",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/ride.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/ride.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/ride.mp3' }
    ]
  },
  {
    title: "Portal",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/portal.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/portal.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/portal.mp3' }
    ]
  },
  {
    title: "Next",
    picture: "",
    info: "about this track",
    genre: Genre.first,
    leases: [
      { contract_info: 'mp3 lease, unlimited use', price: 40, contract_file_path: './public/contracts/*mp3 license.pdf', audio_file_path: './public/audio/Next.mp3' },
      { contract_info: 'wav lease, unlimited use', price: 80, contract_file_path: './public/contracts/*Unlimited License Agreement.pdf', audio_file_path: './public/audio/Next.mp3' },
      { contract_info: 'exclusive lease, unlimited use', price: 500, contract_file_path: './public/contracts/*Exclusive License Agreement.pdf', audio_file_path: './public/audio/Next.mp3' }
    ]
  }
]

instrumentals_data.each do |data|
    instrumental = Instrumental.create(data.slice(:title, :picture, :info, :genre))
    data[:leases].each do |lease_data|
        lease = Lease.create(contract_info: lease_data[:contract_info], price: lease_data[:price])
        lease.contract.attach(io: File.open(lease_data[:contract_file_path]), filename: "#{instrumental.title} license agreement", content_type: "application/pdf")
        audio_file = AudioFile.create(instrumental: instrumental, lease: lease)
        audio_file.file.attach(io: File.open(lease_data[:audio_file_path]), filename: "#{instrumental.title} - #{lease.contract_info}", content_type: 'audio/mp3')
    end
end

puts "seeded ✅:"