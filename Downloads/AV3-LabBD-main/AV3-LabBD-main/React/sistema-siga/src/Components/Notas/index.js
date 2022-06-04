import { Button, Row, Col } from 'react-bootstrap';
import { Link } from 'react-router-dom'
import './index.css'
export default function Notas() {


  return (
    <div className="container">
      <h1>Notas</h1>
      <Row xs={1} md={2} className="row justify-content-center">
        <Col>
          <Button className="mt-3">
            <Link to="/inserirNotas" className="link"> Inserir Notas</Link>
          </Button>
        </Col>
        <Col>
          <Button>
            <Link to="/visualizarNotas" className="link"> Vizualizar Notas</Link>
          </Button>
        </Col>
      </Row>



    </div>
  )
}