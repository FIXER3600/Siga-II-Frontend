import { Navbar, Nav, Row, Col, Button } from 'react-bootstrap';
import Notas from '../Notas'

import { Route, Routes, BrowserRouter, Link } from 'react-router-dom';
import InserirNotas from '../Notas/InserirNotas';
import ExibirMedia from '../Notas/ExibirMedia';
import Faltas from '../Faltas';
import './index.css'
import InserirFaltas from '../Faltas/InserirFaltas';
import ExibirFaltas from '../Faltas/ExibirFaltas';
import Logo from '../../assets/logotipo1.png'
export default function Menu() {

  return (
    <>
      <Navbar bg="light" expand="lg" className="d-flex flex-row justify-content-between">
        <Navbar.Brand href="#home" className="flex-grow-1" ><Nav.Link href="/"> <img  src={Logo}/></Nav.Link></Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="ml-auto">

            <Nav.Item>
              <Nav.Link href="/notas">Notas</Nav.Link>

            </Nav.Item>

            <Nav.Item>
              <Nav.Link href="/faltas">Faltas</Nav.Link>

            </Nav.Item>
    
          </Nav>

        </Navbar.Collapse>
      </Navbar>
    

      <Routes>
        <Route path="/notas" element={<Notas/>} />
        <Route path="/inserirNotas" element={<InserirNotas/>} />
        <Route path="/visualizarNotas" element={<ExibirMedia/>} />

        <Route path="/faltas" element={<Faltas/>} />
        <Route path="/inserirFaltas" element={<InserirFaltas/>} />
        <Route path="/visualizarFaltas" element={<ExibirFaltas/>} />
      </Routes>
      

    </>
  )
}