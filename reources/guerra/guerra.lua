local paredePorto, paredePraia, paredeLixo, paredeTorre, paredeAgua, paredeBay, parede51, paredeKCC, paredePalom, paredeBB, paredeLV
COMECOU = false

function posicao(thePlayer, command)
    local x, y, z = getElementPosition (thePlayer)
    local a,b,c = getElementRotation(thePlayer)
    outputChatBox(x .. ", " .. y ..", " .. z .. ", " .. a .. ", " .. b .. ", " .. c )

end

function carros1(thePlayer, command) -- FUNÇÃO CRIA CARROS EM TODAS AS BASES
    --------BASE PORTO A
    vehicle1a = createVehicle (560, 2749.978515625, -2444.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (vehicle1a, 212, 212, 212)
    vehicle2a = createVehicle (560, 2749.978515625, -2449.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (vehicle2a, 212, 212, 212)
    vehicle3a = createVehicle (560, 2749.978515625, -2439.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (vehicle3a, 212, 212, 212)
    vehicle4a = createVehicle (560, 2749.978515625, -2434.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (vehicle4a, 212, 212, 212)

    sanchez1a = createVehicle (468, 2749.978515625, -2430.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (sanchez1a, 212, 212, 212)
    sanchez2a = createVehicle (468, 2749.978515625, -2426.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (sanchez2a, 212, 212, 212)
    sanchez2a = createVehicle (468, 2749.978515625, -2422.0517578125, 13.6484375, 0.0, 0.0, 270.0, "Guerra")
    setVehicleColor (sanchez2a, 212, 212, 212)

    huntera = createVehicle (425, 2763.4306640625, -2418.8291015625, 14.0, 0.0, 0.0, 0.0, "Guerra")
    setVehicleColor(huntera,212, 212, 212) -----VER O PORQUE NAO MUDA DE COR DESSA BUCETA

    hydra1a = createVehicle (520, 2761.1083984375, -2468.572265625, 14.556028158569, 0.0, 0.0, 0.0, "Guerra")
    hydra2a = createVehicle (520, 2751.1083984375, -2468.572265625, 14.556028158569, 0.0, 0.0, 0.0, "Guerra")

    tank1a = createVehicle (432, 2748.4150390625, -2393.7802734375, 13.644108772278, 0.0, 0.0, 90.0)
    tank2a = createVehicle (432, 2763.4150390625, -2393.7802734375, 13.644108772278, 0.0, 0.0, 90.0)

    heli1a = createVehicle (487, 2761.2060546875, -2484.888671875, 13.49084854126, 0, 0, 0)
    setVehicleColor (heli1a, 212, 212, 212,212, 212, 212)
    heli2a = createVehicle (487, 2751.2060546875, -2484.888671875, 13.49084854126, 0, 0, 0)
    setVehicleColor (heli2a, 212, 212, 212,212, 212, 212)


   --------------------- BASE PRAIA B
    vehicle1b = createVehicle(560, 311.76953125, -1787.9248046875, 4.5791268348694, 0, 0, 180,"Guerra")
    setVehicleColor(vehicle1b,11,244,244)
    vehicle2b = createVehicle(560, 316.76953125, -1787.9248046875, 4.5791268348694, 0, 0, 180,"Guerra")
    setVehicleColor(vehicle2b,11,244,244)
    vehicle3b = createVehicle(560, 321.76953125, -1787.9248046875, 4.5791268348694, 0, 0, 180,"Guerra")
    setVehicleColor(vehicle3b,11,244,244)
    vehicle4b = createVehicle(560, 326.76953125, -1787.9248046875, 4.5791268348694, 0, 0, 180,"Guerra")
    setVehicleColor(vehicle4b,11,244,244)

    sanchez1b = createVehicle (468, 311.791015625, -1809.9462890625, 4.4623508453369,0 ,0 ,0,"Guerra")
    setVehicleColor (sanchez1b, 11,244,244)
    sanchez2b = createVehicle (468, 314.791015625, -1809.9462890625, 4.4623508453369,0 ,0 ,0,"Guerra")
    setVehicleColor (sanchez2b, 11,244,244)
    sanchez3b = createVehicle (468, 317.791015625, -1809.9462890625, 4.4623508453369,0 ,0 ,0,"Guerra")
    setVehicleColor (sanchez3b, 11,244,244)

    tank1b = createVehicle(432, 356.03515625, -1780.7412109375, 5, 0, 0, 0)
    tank2b = createVehicle(432, 346.03515625, -1780.7412109375, 5, 0, 0, 0)

    hunterb = createVehicle(425, 349.015625, -1810.89453125, 4.70, 0, 0, 0)

    heli1b = createVehicle(487,333.513671875, -1811.7431640625, 4.4369788169861, 2,0,0)
    setVehicleColor (heli1b, 11,244,244, 11,244,244)

    heli2b = createVehicle(487,323.513671875, -1811.7431640625, 4.4369788169861, 2,0,0)
    setVehicleColor (heli2b, 11,244,244, 11,244,244)

    hydra1b = createVehicle (520, 291.46484375, -1788.1787109375, 5.3972940444946, 0, 0, 267.56042480469, "Guerra")
    hydra2b = createVehicle (520, 291.46484375, -1808.1787109375, 5.3972940444946, 0, 0, 267.56042480469, "Guerra")
    
    ---------------------------------------------------- BASE LIXAO C

    vehicle1c = createVehicle(560, -1892.24609375, -1745.904296875, 21.75, 0, 0, 0.51361083984375, "Guerra")
    setVehicleColor (vehicle1c, 0, 0, 210)
    vehicle2c = createVehicle(560, -1897.24609375, -1745.904296875, 21.75, 0, 0, 0.51361083984375, "Guerra")
    setVehicleColor (vehicle2c, 0, 0, 210)
    vehicle3c = createVehicle(560, -1902.24609375, -1745.904296875, 21.75, 0, 0, 0.51361083984375, "Guerra")
    setVehicleColor (vehicle3c, 0, 0, 210)
    vehicle4c = createVehicle(560, -1907.24609375, -1745.904296875, 21.75, 0, 0, 0.51361083984375, "Guerra")
    setVehicleColor (vehicle4c, 0, 0, 210)

    tank1c = createVehicle(432, -1880.2880859375, -1738.7373046875, 21.75, 0, 0, 25.073944091797)

    tank2c = createVehicle(432, -1872.23828125, -1734.98828125, 21.75, 0, 0, 23.338073730469)

    hunterc = createVehicle(425, -1917.7666015625, -1709.2421875, 22.75, 0, 0, 271.32525634766)

    hydra1c = createVehicle (520, -1916.876953125, -1736.62890625, 22.29, 0, 0, 267.61181640625, "Guerra")
    hydra2c = createVehicle (520, -1915.0009765625, -1724.6611328125, 22.29, 0, 0, 274.88488769531, "Guerra")

    heli1c = createVehicle(487,-1887.90625, -1706.6650390625, 21.75, 0, 0, 184.28472900391)
    setVehicleColor (heli1c, 0, 0, 210,0, 0, 210)
    heli2c = createVehicle(487,-1899.6787109375, -1709.033203125, 21.75, 0, 0, 185.69648742676)
    setVehicleColor (heli2c, 0, 0, 210,0, 0, 210)

    sanchez1c = createVehicle (468, -1887.4921875, -1745.2666015625, 21.75, 0, 0, 26.112182617188,"Guerra")
    setVehicleColor (sanchez1c, 0, 0, 210)
    sanchez2c = createVehicle (468, -1884.2158203125, -1744.306640625, 21.75, 0, 0, 23.612731933594,"Guerra")
    setVehicleColor (sanchez2c, 0, 0, 210)
    sanchez2c = createVehicle (468, -1887.79296875, -1739.9609375, 21.75, 0, 0, 26.452728271484,"Guerra")
    setVehicleColor (sanchez2c, 0, 0, 210)
    


    -------------------------------------------------------- BASE TORRE SF D

    vehicle1d = createVehicle(560, -2496.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625, "Guerra")
    setVehicleColor (vehicle1d, 45, 226, 24)
    vehicle2d = createVehicle(560, -2501.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625, "Guerra")
    setVehicleColor (vehicle2d, 45, 226, 24)
    vehicle3d = createVehicle(560, -2506.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625, "Guerra")
    setVehicleColor (vehicle3d, 45, 226, 24)
    vehicle4d = createVehicle(560, -2511.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625, "Guerra")
    setVehicleColor (vehicle4d, 45, 226, 24)

    sanchez1d = createVehicle (468, -2516.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625,"Guerra")
    setVehicleColor (sanchez1d, 45, 226, 24)
    sanchez2d = createVehicle (468, -2520.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625,"Guerra")
    setVehicleColor (sanchez2d, 45, 226, 24)
    sanchez3d = createVehicle (468, -2518.1689453125, -598.626953125, 132.7109375, 0, 0, 180.18125915527,"Guerra")
    setVehicleColor (sanchez3d, 45, 226, 24)

    tank1d = createVehicle(432, -2492.193359375, -625.0869140625, 132.64170837402, 0, 0, 358.11856079102)
    tank2d = createVehicle(432, -2499.193359375, -625.0869140625, 132.64170837402, 0, 0, 358.11856079102)

    hunterd = createVehicle(425, -2530.1904296875, -617.5986328125, 133.5625, 0, 0, 272.59417724609)

    heli1d = createVehicle (487, -2525.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625,"Guerra")
    setVehicleColor (heli1d, 45, 226, 24, 45, 226, 24)
    heli2d = createVehicle (487, -2535.03125, -601.3095703125, 132.5625, 0, 0, 179.5166015625,"Guerra")
    setVehicleColor (heli2d, 45, 226, 24, 45, 226, 24)
    
    hydra1d = createVehicle (520, -2475.5849609375, -599.6298828125, 133.64823913574, 0, 0, 184.40557861328, "Guerra")
    hydra2d = createVehicle (520, -2464.888671875, -602.501953125, 133.3448638916, 0, 0, 184.40557861328, "Guerra")

    -------------------------------------------------------- BASE PRAIA SF E
    vehicle1e = createVehicle(560, -2909.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125, "Guerra")
    setVehicleColor (vehicle1e, 31, 200, 150)
    vehicle2e = createVehicle(560, -2914.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125, "Guerra")
    setVehicleColor (vehicle2e, 31, 200, 150)
    vehicle3e = createVehicle(560, -2919.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125, "Guerra")
    setVehicleColor (vehicle3e, 31, 200, 150)
    vehicle4e = createVehicle(560, -2924.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125, "Guerra")
    setVehicleColor (vehicle4e, 31, 200, 150)

    sanchez1e = createVehicle (468, -2927.78515625, 440.2734375, 4.9065704345703, 0, 0, 269.12796020508,"Guerra")
    setVehicleColor (sanchez1e, 31, 200, 150)
    sanchez2e = createVehicle (468, -2927.78515625, 444.2734375, 4.9065704345703, 0, 0, 269.12796020508,"Guerra")
    setVehicleColor (sanchez2e, 31, 200, 150)
    sanchez3e = createVehicle (468, -2927.78515625, 448.2734375, 4.9065704345703, 0, 0, 269.12796020508,"Guerra")
    setVehicleColor (sanchez3e, 31, 200, 150)



    heli1e = createVehicle (487, -2889.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125,"Guerra")
    setVehicleColor (heli1e, 31, 200, 150, 31, 200, 150)
    heli2e = createVehicle (487, -2899.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125,"Guerra")
    setVehicleColor (heli2e, 31, 200, 150, 31, 200, 150)


    tank1e = createVehicle(432, -2874.0498046875, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125)
    tank2e = createVehicle(432, -2880.193359375, 428.4619140625, 4.9941635131836, 0, 0, 0.53009033203125)

    hydra1e = createVehicle (520, -2919.857421875, 494.6923828125, 5.9140625, 0, 0, 179.98901367188, "Guerra")
    hydra2e = createVehicle (520, -2909.857421875, 494.6923828125, 5.9140625, 0, 0, 179.98901367188, "Guerra")

    huntere = createVehicle(425, -2895.857421875, 494.6923828125, 5.9140625, 0, 0, 179.98901367188)

    -------------------------------------------------------- BASE BAY SIDE F

    vehicle1f = createVehicle(560, -2250.7978515625, 2317.359375, 4.8125, 0, 0, 90.619354248047, "Guerra")
    setVehicleColor (vehicle1f, 164, 0, 0)
    vehicle2f = createVehicle(560, -2250.7978515625, 2312.359375, 4.8125, 0, 0, 90.619354248047, "Guerra")
    setVehicleColor (vehicle2f, 164, 0, 0)
    vehicle3f = createVehicle(560, -2250.7978515625, 2307.359375, 4.8125, 0, 0, 90.619354248047, "Guerra")
    setVehicleColor (vehicle3f, 164, 0, 0)
    vehicle4f = createVehicle(560, -2250.7978515625, 2302.359375, 4.8125, 0, 0, 90.619354248047, "Guerra")
    setVehicleColor (vehicle4f, 164, 0, 0)

    sanchez1f = createVehicle (468, -2272.435546875, 2308.88671875, 4.8202133178711, 0, 0, 270.23208618164,"Guerra")
    setVehicleColor (sanchez1f, 164, 0, 0)
    sanchez2f = createVehicle (468, -2272.435546875, 2305.88671875, 4.8202133178711, 0, 0, 270.23208618164,"Guerra")
    setVehicleColor (sanchez2f, 164, 0, 0)
    sanchez3f = createVehicle (468, -2272.435546875, 2302.88671875, 4.8202133178711, 0, 0, 270.23208618164,"Guerra")
    setVehicleColor (sanchez3f, 164, 0, 0)

    heli1f = createVehicle (487, -2227.4912109375, 2307.6025390625, 5.2553000450134, 0, 0, 89.597625732422,"Guerra")
    setVehicleColor (heli1f, 164, 0, 0, 164, 0, 0)
    heli2f = createVehicle (487, -2227.4912109375, 2296.6025390625, 5.2553000450134, 0, 0, 89.597625732422,"Guerra")
    setVehicleColor (heli2f, 164, 0, 0, 164, 0, 0)


    tank1f = createVehicle(432, -2251.7119140625, 2359.728515625, 4.9856295585632, 0, 0, 41.932708740234)
    tank2f = createVehicle(432, -2272.7451171875, 2316.6767578125, 4.8202133178711, 0, 0, 0.8690795898438)

    hydra1e = createVehicle (520, -2273.4384765625, 2291.0029296875, 5.8202133178711, 0, 0, 0.36529541015625, "Guerra")
    hydra2e = createVehicle (520, -2258.4384765625, 2291.0029296875, 5.8202133178711, 0, 0, 0.36529541015625, "Guerra")


    hunterf = createVehicle(425, -2246.9580078125, 2330.3115234375, 5.972231388092, 0, 0, 0.05218505859375)

      -------------------------------------------------------- BASE AREA 51 G

    vehicle1g = createVehicle(560, 296.1796875, 1866.5595703125, 17.640625, 0, 0, 272.31402587891, "Guerra")
    setVehicleColor (vehicle1g, 255,62,207)
    vehicle2g = createVehicle(560, 296.1796875, 1861.5595703125, 17.640625, 0, 0, 272.31402587891, "Guerra")
    setVehicleColor (vehicle2g, 255,62,207)
    vehicle3g = createVehicle(560, 296.1796875, 1856.5595703125, 17.640625, 0, 0, 272.31402587891, "Guerra")
    setVehicleColor (vehicle3g, 255,62,207)
    vehicle4g = createVehicle(560, 296.1796875, 1851.5595703125, 17.640625, 0, 0, 272.31402587891, "Guerra")
    setVehicleColor (vehicle4g, 255,62,207)

    sanchez1g = createVehicle (468, 296.1796875, 1847.5595703125, 17.640625, 0, 0, 272.31402587891,"Guerra")
    setVehicleColor (sanchez1g, 255,62,207)
    sanchez2g = createVehicle (468, 296.1796875, 1843.5595703125, 17.640625, 0, 0, 272.31402587891,"Guerra")
    setVehicleColor (sanchez2g, 255,62,207)
    sanchez3g = createVehicle (468, 296.1796875, 1839.5595703125, 17.640625, 0, 0, 272.31402587891,"Guerra")
    setVehicleColor (sanchez3g, 255,62,207)

    heli1g = createVehicle (487, 326.89453125, 1840.7080078125, 17.640625, 0, 0, 89.976654052734,"Guerra")
    setVehicleColor (heli1g, 255,62,207, 255,62,207)
    heli2g = createVehicle (487, 326.89453125, 1849.7080078125, 17.640625, 0, 0, 89.976654052734,"Guerra")
    setVehicleColor (heli2g, 255,62,207, 255,62,207)

    hydra1g = createVehicle (520, 300.5546875, 1878.859375, 18.640625, 0, 0, 358.67340087891, "Guerra")
    hydra2g = createVehicle (520, 313.5546875, 1878.859375, 18.640625, 0, 0, 358.67340087891, "Guerra")

    hunterg = createVehicle(425, 326.0166015625, 1868.173828125, 18.640625, 0, 0, 357.22863769531)

    tank1g = createVehicle(432, 301.25, 1830.05078125, 17.640625, 0, 0, 3.2108154296875)
    tank2g = createVehicle(432, 311.25, 1830.05078125, 17.640625, 0, 0, 3.2108154296875)
   

    -------------------------------------------------------- BASE KCC H

    vehicle1h = createVehicle(560, 2816.1123046875, 2694.8154296875, 10.8203125, 0, 0, 89.734954833984, "Guerra")
    setVehicleColor (vehicle1h, 250,227,67)
    vehicle2h = createVehicle(560, 2816.1123046875, 2689.8154296875, 10.8203125, 0, 0, 89.734954833984, "Guerra")
    setVehicleColor (vehicle2h, 250,227,67)
    vehicle3h = createVehicle(560, 2816.1123046875, 2684.8154296875, 10.8203125, 0, 0, 89.734954833984, "Guerra")
    setVehicleColor (vehicle3h, 250,227,67)
    vehicle4h = createVehicle(560, 2816.1123046875, 2679.8154296875, 10.8203125, 0, 0, 89.734954833984, "Guerra")
    setVehicleColor (vehicle4h, 250,227,67)

    sanchez1h = createVehicle (468, 2816.1123046875, 2705.8154296875, 10.8203125, 0, 0, 89.734954833984,"Guerra")
    setVehicleColor (sanchez1h, 250,227,67)
    sanchez2h = createVehicle (468, 2816.1123046875, 2702.8154296875, 10.8203125, 0, 0, 89.734954833984,"Guerra")
    setVehicleColor (sanchez2h, 250,227,67)
    sanchez3h = createVehicle (468, 2816.1123046875, 2699.8154296875, 10.8203125, 0, 0, 89.734954833984,"Guerra")
    setVehicleColor (sanchez3h, 250,227,67)

    heli1h = createVehicle (487, 2816.1123046875, 2725.8154296875, 10.8203125, 0, 0, 89.734954833984,"Guerra")
    setVehicleColor (heli1h, 250,227,67, 250,227,67)
    heli2h = createVehicle (487, 2816.1123046875, 2713.8154296875, 10.8203125, 0, 0, 89.734954833984,"Guerra")
    setVehicleColor (heli2h, 250,227,67, 250,227,67)

    hydra1h = createVehicle (520, 2770.693359375, 2733.80078125, 11.8203125, 0, 0, 177.79724121094, "Guerra")
    hydra2h = createVehicle (520, 2780.693359375, 2733.80078125, 11.8203125, 0, 0, 177.79724121094, "Guerra")

    hunterh = createVehicle(425, 2790.693359375, 2733.80078125, 11.8203125, 0, 0, 177.79724121094)

    tank1h = createVehicle(432, 2770.693359375, 2703.80078125, 10.8203125, 0, 0, 177.79724121094)
    tank2h = createVehicle(432, 2780.693359375, 2703.80078125, 10.8203125, 0, 0, 177.79724121094)

       -------------------------------------------------------- BASE LV i

    vehicle1i = createVehicle(560, 2882.8046875, 1755, 10.8203125, 0, 0, 90.344696044922, "Guerra")
    setVehicleColor (vehicle1i, 206,98,0)
    vehicle2i = createVehicle(560, 2882.8046875, 1760, 10.8203125, 0, 0, 90.344696044922, "Guerra")
    setVehicleColor (vehicle2i, 206,98,0)
    vehicle3i = createVehicle(560, 2882.8046875, 1765, 10.8203125, 0, 0, 90.344696044922, "Guerra")
    setVehicleColor (vehicle3i, 206,98,0)
    vehicle4i = createVehicle(560, 2882.8046875, 1770, 10.8203125, 0, 0, 90.344696044922, "Guerra")
    setVehicleColor (vehicle4i, 206,98,0)

    sanchez1i = createVehicle (468, 2882.8046875, 1775, 10.8203125, 0, 0, 90.344696044922,"Guerra")
    setVehicleColor (sanchez1i, 206,98,0)
    sanchez2i = createVehicle (468, 2882.8046875, 1778, 10.8203125, 0, 0, 90.344696044922,"Guerra")
    setVehicleColor (sanchez2i, 206,98,0)
    sanchez3i = createVehicle (468, 2882.8046875, 1781, 10.8203125, 0, 0, 90.344696044922,"Guerra")
    setVehicleColor (sanchez3i, 206,98,0)

    heli1h = createVehicle (487, 2818.404296875, 1761.0107421875, 10.8203125, 0, 0, 268.61706542969,"Guerra")
    setVehicleColor (heli1h, 206,98,0,206,98,0)
    heli2h = createVehicle (487, 2818.404296875, 1772.0107421875, 10.8203125, 0, 0, 268.61706542969,"Guerra")
    setVehicleColor (heli2h, 206,98,0,206,98,0)

    hydra1i = createVehicle (520, 2834.0771484375, 1745.716796875, 11.8203125, 0, 0, 359.46441650391, "Guerra")
    hydra2i = createVehicle (520, 2844.0771484375, 1745.716796875, 11.8203125, 0, 0, 359.46441650391, "Guerra")

    hunterh = createVehicle(425, 2834.40234375, 1783.31640625, 11.8203125, 0, 0, 180.0439453125)

    tank1i = createVehicle(432, 2865.0771484375, 1745.716796875, 10.8203125, 0, 0, 359.46441650391)
    tank2i = createVehicle(432, 2855.0771484375, 1745.716796875, 10.8203125, 0, 0, 359.46441650391)
    

    -------------------------------------------------------- BASE PALOMINO j
    vehicle1j = createVehicle(560, 2389.9716796875, 138.3251953125, 26.475885391235, 0, 0, 267.4140625, "Guerra")
    setVehicleColor (vehicle1j, 62,183,68)
    vehicle2j = createVehicle(560, 2389.9716796875, 143.3251953125, 26.475885391235, 0, 0, 267.4140625, "Guerra")
    setVehicleColor (vehicle2j, 62,183,68)
    vehicle3j = createVehicle(560, 2389.9716796875, 148.3251953125, 26.475885391235, 0, 0, 267.4140625, "Guerra")
    setVehicleColor (vehicle3j, 62,183,68)
    vehicle4j = createVehicle(560, 2389.9716796875, 153.3251953125, 26.475885391235, 0, 0, 267.4140625, "Guerra")
    setVehicleColor (vehicle4j, 62,183,68)

    sanchez1j = createVehicle (468, 2389.9716796875, 158.3251953125, 26.475885391235, 0, 0, 267.4140625,"Guerra")
    setVehicleColor (sanchez1j, 62,183,68)
    sanchez2j = createVehicle (468, 2389.9716796875, 161.3251953125, 26.475885391235, 0, 0, 267.4140625,"Guerra")
    setVehicleColor (sanchez2j, 62,183,68)
    sanchez3j = createVehicle (468, 2389.9716796875, 164.3251953125, 26.475885391235, 0, 0, 267.4140625,"Guerra")
    setVehicleColor (sanchez3j, 62,183,68)

    heli1h = createVehicle (487, 2417.798828125, 122.3681640625, 26.4765625, 0, 0, 0.98605346679688,"Guerra")
    setVehicleColor (heli1h, 62,183,68,62,183,68)
    heli2h = createVehicle (487, 2427.798828125, 122.3681640625, 26.4765625, 0, 0, 0.98605346679688,"Guerra")
    setVehicleColor (heli2h, 62,183,68,62,183,68)

    hunterh = createVehicle(425, 2437.20703125, 157.626953125, 26.457399368286, 0, 0, 90.333709716797)

    tank1j = createVehicle(432, 2437.20703125, 135.626953125, 26.457399368286, 0, 0, 90.333709716797)
    tank2j = createVehicle(432, 2437.20703125, 145.626953125, 26.457399368286, 0, 0, 90.333709716797)

    hydra1j = createVehicle (520, 2391.9716796875, 174.3251953125, 27.475885391235, 0, 0, 267.4140625, "Guerra")
    hydra2j = createVehicle (520, 2391.9716796875, 184.3251953125, 27.475885391235, 0, 0, 267.4140625, "Guerra")

    -------------------------------------------------------- BASE FAZENDA K

    vehicle1k = createVehicle(560, -258.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875, "Guerra")
    setVehicleColor (vehicle1k, 115,115,115)
    vehicle2k = createVehicle(560, -253.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875, "Guerra")
    setVehicleColor (vehicle2k, 115,115,115)
    vehicle3k = createVehicle(560, -248.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875, "Guerra")
    setVehicleColor (vehicle3k, 115,115,115)
    vehicle4k = createVehicle(560, -243.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875, "Guerra")
    setVehicleColor (vehicle4k, 115,115,115)

    sanchez1k = createVehicle (468, -240.89453125, -90.1162109375, 3.1171875, 0, 0, 186.23484802246,"Guerra")
    setVehicleColor (sanchez1k, 115,115,115)
    sanchez2k = createVehicle (468, -237.89453125, -90.1162109375, 3.1171875, 0, 0, 186.23484802246,"Guerra")
    setVehicleColor (sanchez2k, 115,115,115)
    sanchez3k = createVehicle (468, -234.89453125, -90.1162109375, 3.1171875, 0, 0, 186.23484802246,"Guerra")
    setVehicleColor (sanchez3k, 115,115,115)

    tank1k = createVehicle(432, -236.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875)
    tank2k = createVehicle(432, -226.7099609375, -116.8349609375, 3.1171875, 0, 0, 4.3973388671875)

    hunterk = createVehicle(425, -224.89453125, -90.1162109375, 4.1171875, 0, 0, 186.23484802246)

    hydra1j = createVehicle (520, -212.89453125, -90.1162109375, 3.8171875, 0, 0, 186.23484802246, "Guerra")
    hydra2j = createVehicle (520, -200.89453125, -90.1162109375, 3.8171875, 0, 0, 186.23484802246, "Guerra")


    heli1k = createVehicle (487, -260.89453125, -90.1162109375, 3.1171875, 0, 0, 186.23484802246,"Guerra")
    setVehicleColor (heli1k, 115,115,115,115,115,115)
    heli2k = createVehicle (487, -250.89453125, -90.1162109375, 3.1171875, 0, 0, 186.23484802246,"Guerra")
    setVehicleColor (heli2k, 115,115,115,115,115,115)

end

function Congela(thePlayer) -- FUNÇÃO TRAVA CARROS
    local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
		-- if the vehicle's ID is the one provided, destroy it
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 487 or getElementModel(v) == 432 or getElementModel(v) == 468 or getElementModel(v) == 560) then
			setElementFrozen(v,true)
		end
	end
end

function Descongela(thePlayer) --FUNÇÃO DE COMEÇAR
    local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
        fixVehicle(v)
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 487 or getElementModel(v) == 432 or getElementModel(v) == 468 or getElementModel(v) == 560) then
			setElementFrozen(v,false)
		end
	end
    COMECOU = true
    exports.V_infobox:addBox(root, "Match Started | PARTIDA COMEÇOU BORAAAAAA!", "success")
end


function destroiAero(thePlayer) --PARTIDA 2
	-- get a table of all the vehicles that exist and loop through it
	local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
		-- if the vehicle's ID is the one provided, destroy it
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 487) then
			destroyElement(v)
		end
	end
    exports.V_infobox:addBox(root, "Segunda partida vai começar. Helis e jatos foram destruidos!", "success")
end

function destroiAeroTank(thePlayer) --PARTIDA 3
    -- get a table of all the vehicles that exist and loop through it
	local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
		-- if the vehicle's ID is the one provided, destroy it
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 432 or getElementModel(v) == 487) then
			destroyElement(v)
		end
	end
    exports.V_infobox:addBox(root, "Terceira partida vai começar. Tanks e aereos foram destruidos!", "success")
    
end

function destroiTank()
    local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
		-- if the vehicle's ID is the one provided, destroy it
		if getElementModel(v) == 432 then
			destroyElement(v)
		end
	end
    exports.V_infobox:addBox(root, "Tanks foram removidos com sucesso", "admin")
end 

function limpaMapa(thePlayer)
    destroyElement ( root )
end


addCommandHandler('comeca', Descongela,false,false)




addEventHandler('onVehicleExplode',root, function()
    setElementFrozen(source,true)
end)





addEventHandler("onResourceStart", getRootElement(), limpaMapa)
addEventHandler("onResourceStart", getRootElement(), carros1)
addEventHandler("onResourceStart", getRootElement(), Congela)

addCommandHandler("comeca",Descongela)
addCommandHandler("partida2",destroiAero)
addCommandHandler("partida3",destroiAeroTank)
addCommandHandler('semtank',destroiTank,false,false)

addCommandHandler("po",posicao)

addCommandHandler('kickall',function()
    lista = getElementsByType('player')
    for a,b in ipairs(lista) do 
        if getTeamName(getPlayerTeam(b)) ~= 'STAFF' then 
            kickPlayer(b, 'SERVER', 'Reiniciando partida')
        end
    end
end,true,false)


