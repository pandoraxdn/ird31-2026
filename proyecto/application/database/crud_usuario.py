from database.models import Usuario
from database.data import SesionLocal

# CRUD
def crear_usuario(nombre, email, telefono, direccion, fecha_nacimiento, activo=True):
    db = SesionLocal()
    try:
        registro = Usuario(
            nombre=nombre,
            email=email,
            telefono=telefono,
            direccion=direccion,
            fecha_nacimiento=fecha_nacimiento,
            activo=activo
        ) 
        db.add(registro)
        db.commit()
        db.refresh(registro)
        return registro
    except Exception as e:
        db.rollback()
        print(e)
        return None
    finally:
        db.close()

def buscar_usuario(id_usuario):
    db = SesionLocal()
    try:
        return db.query(Usuario).filter(Usuario.id_usuario == id_usuario).first()
    except Exception as e:
        print(e)
        return None

def lista_usuarios():
    db = SesionLocal()
    try:
        return db.query(Usuario).all()
    except Exception as e:
        print(e)
        return None

def actualizar_usuario(id_usuario, nombre, email, telefono, direccion, fecha_nacimiento, activo=True):
    db = SesionLocal()
    try:
        usuario = db.query(Usuario).filter(Usuario.id_usuario == id_usuario).first()
        if usuario:
            usuario.nombre = nombre
            usuario.email = email
            usuario.telefono = telefono
            usuario.direccion = direccion
            usuario.fecha_nacimiento = fecha_nacimiento
            usuario.activo = activo
            db.commit()
            db.refresh(usuario)
            return usuario
    except Exception as e:
        db.rollback()
        print(e)
        return None
    finally:
        db.close()

def eliminar_usuario(id_usuario):
    db = SesionLocal()
    try:
        usuario = db.query(Usuario).filter(Usuario.id_usuario == id_usuario).first()
        if usuario:
            db.delete(usuario)
            db.commit()
            return usuario
    except Exception as e:
        print(e)
        return None


