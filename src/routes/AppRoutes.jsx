import { BrowserRouter, Routes,Route } from "react-router-dom"
import { AOCPage } from "../pages/AOC"
import { BDPage } from "../pages/BD"
import { InitialPage } from "../pages/InitialPage"
import { LabBDPage } from "../pages/LabBD/INDEX"
import { LabHPage } from "../pages/LabH"
import { MPCPage } from "../pages/MPC"
import { SOIPage } from "../pages/SOI"

export const AppRoutes=()=>{
    return(
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<InitialPage/>}/>
                <Route path="/lab-bd" element={<LabBDPage/>}/>
                <Route path="/aoc" element={<AOCPage/>}/>
                <Route path="/bd" element={<BDPage/>}/>
                <Route path="/lab-h" element={<LabHPage/>}/>
                <Route path="/mpc" element={<MPCPage/>}/>
                <Route path="/soi" element={<SOIPage/>}/>
            </Routes>
        </BrowserRouter>
    )

}