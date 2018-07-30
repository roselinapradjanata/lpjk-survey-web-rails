# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CompanyCategory.create([
    { name: 'Pemilik' },
    { name: 'Konsultan' },
    { name: 'Kontraktor' },
    { name: 'Other' }
])

CompanyType.create([
    { name: 'Perusahaan Perseorangan' },
    { name: 'Koperasi' },
    { name: 'Badan Usaha Milik Negara (BUMN)' },
    { name: 'Badan Usaha Milik Swasta (BUMS' },
    { name: 'Other' }
])

ConstructionProductType.create([
    { name: 'Gedung' },
    { name: 'Infrastruktur' },
    { name: 'Industri' },
    { name: 'Perumahan' },
    { name: 'Pengawasan' },
    { name: 'Desain' },
    { name: 'Studi' },
    { name: 'Other' }
])

ConstructionProjectCost.create([
    { name: '< Rp.100.000.000.000' },
    { name: 'Rp.100.000.000.000 - Rp.300.000.000.000' },
    { name: 'Rp.300.000.000.000 - Rp.500.000.000.000' },
    { name: 'Rp.500.000.000.000 - Rp.700.000.000.000' },
    { name: 'Rp.900.000.000.000 - Rp.1.100.000.000.000' },
    { name: 'Rp.1.100.000.000.000 - Rp.1.300.000.000.000' },
    { name: 'Rp.1.300.000.000.000 - Rp.1.500.000.000.000' },
    { name: 'Rp.1.500.000.000.000 - Rp.1.700.000.000.000' },
    { name: 'Rp.1.700.000.000.000 - Rp.1.900.000.000.000' },
    { name: '> Rp.1.900.000.000.000' }
])

TechnologyConstructionStage.create([
    { name: 'Perencanaan' },
    { name: 'Perancangan' },
    { name: 'Konstruksi' },
    { name: 'Pemanfaatan' },
    { name: 'Pemeliharaan' },
    { name: 'Pembongkaran' },
    { name: 'Other' }
])

TechnologyConstructionType.create([
    { name: 'Perangkat Lunak (Software)' },
    { name: 'Perangkat Keras (Hardware)' },
    { name: 'Material' },
    { name: 'Peralatan' },
    { name: 'Metode' },
    { name: 'Other' }
])

TechnologyConstructionOrigin.create([
    { name: 'Dalam Negeri' },
    { name: 'Luar Negeri' }
])

TechnologyConstructionOwner.create([
    { name: 'Kontraktor' },
    { name: 'Konsultan' },
    { name: 'Supplier' },
    { name: 'Other' }
])

TechnologyConstructionCategory.create([
    { name: 'Paten' },
    { name: 'Merek' },
    { name: 'Hak Cipta' },
    { name: 'Desain Industri' },
    { name: 'Desain Tata Letak Sirkuit Terpadu' },
    { name: 'Rahasia Dagang' },
    { name: 'Indikasi Geografis' },
])

TechnologyConstructionPrimaryType.create([
    { name: 'Teknologi Informasi' },
    { name: 'Teknologi Mekanik' },
    { name: 'Elektronik' },
    { name: 'Material' },
    { name: 'Proses' }
])

TechnologyConstructionBenefit.create([
    { name: 'Tangible' },
    { name: 'Intangible' }
])

TechnologyConstructionCost.create([
    { name: 'Investasi' },
    { name: 'Operasi' },
    { name: 'Pemeliharaan' },
    { name: 'Other' }
])

TechnologyConstructionSuccessFactor.create([
    { name: 'Teknis' },
    { name: 'Non Teknis' }
])

TechnologyConstructionObstacle.create([
    { name: 'Teknis' },
    { name: 'Non Teknis' }
])

TechnologyConstructionHumanResource.create([
    { name: 'Tenaga Ahli' },
    { name: 'Tenaga Terampil' },
    { name: 'Tenaga Umum' },
    { name: 'Other' }
])

TechnologyConstructionSupport.create([
    { name: 'Informasi' },
    { name: 'Mekanik' },
    { name: 'Elektronik' },
    { name: 'Material' },
    { name: 'Proses' },
    { name: 'Other' }
])

TechnologyConstructionSupplyChain.create([
    { name: 'Ya' },
    { name: 'Tidak' }
])

TechnologyConstructionSupplyChainOrigin.create([
    { name: 'Dalam Negeri' },
    { name: 'Luar Negeri' }
])

TechnologyConstructionInovationOrigin.create([
    { name: 'Dalam Negeri' },
    { name: 'Luar Negeri' }
])

TechnologyConstructionInovationCategory.create([
    { name: 'HaKI (Hak atas Kekayaan Intelektual)' },
    { name: 'Pengembangan' },
    { name: 'Transfer' },
    { name: 'Beli' },
    { name: 'Adopsi' },
    { name: 'Other' }
])

TechnologyConstructionAssessment.create([
    { name: 'Ya' },
    { name: 'Tidak' }
])

TechnologyConstructionLevel.create([
    { name: 'Emerging' },
    { name: 'Growth' },
    { name: 'Maturity' },
    { name: 'Decline' }
])
