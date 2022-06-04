import { Navbar, Nav } from 'react-bootstrap';
import Notas from '../Notas'

import { Route, Switch } from 'react-router-dom';
import InserirNotas from '../Notas/InserirNotas';
import ExibirMedia from '../Notas/ExibirMedia';
import Faltas from '../Faltas';

import InserirFaltas from '../Faltas/InserirFaltas';
import ExibirFaltas from '../Faltas/ExibirFaltas';

export default function Menu() {

  return (
    <>
      <Navbar bg="light" expand="lg" className="d-flex flex-row justify-content-between">
        <Navbar.Brand href="#home" className="flex-grow-1">Sistema Siga</Navbar.Brand>
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


      <Switch>
        <Route path="/notas" component={Notas} />
        <Route path="/inserirNotas" component={InserirNotas} />
        <Route path="/visualizarNotas" component={ExibirMedia} />

        <Route path="/faltas" component={Faltas} />
        <Route path="/inserirFaltas" component={InserirFaltas} />
        <Route path="/visualizarFaltas" component={ExibirFaltas} />
      </Switch>


    </>
  )
}