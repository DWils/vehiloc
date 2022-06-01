const client = require('./connection.js');
const express = require('express');
const bodyParser = require("body-parser")


const app = express();
app.use(bodyParser.json());

app.listen(3300, ()=> {
    console.log("Server is now listening at port 3300");
})

client.connect();

app.get('/vehicules', (req,res) => {
    client.query('Select * from vehicules', (err, result) => {
        if(!err){
            res.send(result.rows);
        }
    });
    client.end;
})


app.get('/vehicules/:id', (req,res) => {
    client.query(`Select * from vehicules where id_vehicule=${req.params.id}`, (err, result) => {
        if(!err){
            res.send(result.rows);
        }
    });
    client.end;
})


app.post('/vehicules', (req,res) => {
    const vehicule = req.body;
    let insertQuery = `insert into vehicules (id_vehicule, marque, modele, couleur, id_type, prix_horaire, disponibilite ) values ( ${vehicule.id} , ${vehicule.marque}, ${vehicule.modele},${vehicule.couleur}, ${vehicule.id_type}, ${vehicule.prix_horaire}, true)`
    client.query(insertQuery, (err, result) => {
        if(!err){
            res.send("Ajout réussi !");
        }
        else{ console.log(err.message) }
    });
    client.end;
})

app.put('/vehicules/:id', (req,res) => {
    let vehicule = req.body;
    let updateQuery =   `update vehicules
                        set marque = '${vehicule.marque}',
                        modele = '${vehicule.modele}',
                        couleur = '${vehicule.couleur}'
                        id_type = ${vehicule.id_type},
                        prix_horaire = ${vehicule.prix_horaire}
                        where id_vehicule = ${vehicule.id}
                        `
    client.query(updateQuery, (err, result) => {
        if(!err){
            res.send("Mise à jour réussie !");
        }
        else{ console.log(err.message) }
    });
    client.end;
})

app.delete('/vehicules/:id', (req,res) => {
    let deleteQuery =   `delete from vehicules where id_vehicule = ${req.params.id}`
    client.query(deleteQuery, (err, result) => {
        if(!err){
            res.send("Suppression réussi !");
        }
        else{ console.log(err.message) }
    });
    client.end;
})
