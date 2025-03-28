# API CRUD en Go con PostgreSQL y Docker

## Descripción del Proyecto

API RESTful que implementa operaciones CRUD (Create, Read, Update, Delete) para gestión de usuarios. Desarrollada con:

- **Gorilla Mux** como enrutador
- **PostgreSQL** como base de datos
- **Docker** para containerización

## Requisitos del Sistema

- Docker 20.10+
- Docker Compose 1.29+
- Go 1.19+ (solo para desarrollo local)

## Estructura del Proyecto

├── Dockerfile
├── docker-compose.yml
├── go.mod
├── go.sum
└── main.go

## Configuración

### Variables de Entorno

- `DATABASE_URL`: Cadena de conexión a PostgreSQL (configurada en docker-compose.yml)

### Puertos

- **API**: 8080 (expuesto como 8080 en host)
- **PostgreSQL**: 5432 (expuesto como 5430 en host)

## Instalación

### Con Docker Compose (Recomendado)

```bash
docker-compose up --build


La API estará disponible en http://localhost:8080



Sin Docker (Solo para Desarrollo)
Configurar PostgreSQL localmente

Establecer variable de entorno:
export DATABASE_URL="host=localhost user=postgres password=tu_password dbname=postgres sslmode=disable"

Ejecutar:

go run main.go


Endpoints API


GET /users
Obtiene todos los usuarios

[
  {
    "id": 1,
    "name": "Juan Pérez",
    "email": "juan@example.com"
  }
]


GET /users/{id}
Obtiene un usuario específico

{
  "id": 1,
  "name": "Juan Pérez",
  "email": "juan@example.com"
}

POST /users
Crea un nuevo usuario
Request

{
  "name": "Nuevo Usuario",
  "email": "nuevo@example.com"
}

Response:
{
  "id": 2,
  "name": "Nuevo Usuario",
  "email": "nuevo@example.com"
}

PUT /users/{id}
Actualiza un usuario
Request:
{
  "name": "Usuario Actualizado",
  "email": "actualizado@example.com"
}


DELETE /users/{id}
Elimina un usuario
Response:

"User deleted"

-----------------------

Seguridad
En producción:

Cambiar credenciales por defecto

Usar sslmode=require

Implementar autenticación (JWT/OAuth)

Roadmap
Mejorar manejo de errores

Añadir logging

Implementar tests

Añadir migraciones de BD

Implementar autenticación
```
