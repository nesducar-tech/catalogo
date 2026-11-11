# Catálogo ZIVI — guía completa

## Archivos
- `index.html`: catálogo público
- `admin.html`: panel para cargar productos
- `config.js`: tus datos (WhatsApp y Supabase)
- `setup.sql`: crea la base de datos y el almacenamiento de fotos
- `style.css`, `logo.jpg`: diseño y logo

## 1. Supabase (gratis)
1. Crear proyecto en supabase.com.
2. SQL Editor → pegar `setup.sql` → Run.
3. Authentication → Users → Add user (tu email y una contraseña nueva, con "Auto confirm").
4. Authentication → Sign In / Providers → desactivar "Allow new users to sign up".
5. Project Settings → API: copiar Project URL y clave anon public.

## 2. config.js
- `SUPABASE_URL` y `SUPABASE_KEY`: los datos del paso anterior.
- `WHATSAPP`: tu número con código de país, sin + ni espacios, sin el 0 inicial (ej: 595981123456).
- `MONEDA`: por ejemplo "Gs.".

## 3. Probar en VS Code
1. File > Open Folder → esta carpeta.
2. Instalar la extensión Live Server.
3. Clic derecho en `index.html` → Open with Live Server.

## 4. Publicar
1. Source Control → Initialize Repository → commit → Publish to GitHub.
2. En vercel.com: Add New > Project → importar el repositorio → Deploy.
3. Cada cambio que subas desde VS Code se publica solo.

## 5. Uso diario
- Catálogo: tu-sitio.vercel.app
- Admin: tu-sitio.vercel.app/admin.html (guardalo en favoritos)
- Desde el admin: agregar, editar, ocultar/mostrar y borrar productos. Los cambios se ven al recargar el catálogo.

## Notas
- Nunca compartas la contraseña de Supabase en chats ni en archivos del proyecto.
- Si Supabase pausa el proyecto por falta de actividad, reactivalo desde su panel.

## Nota: proyecto Supabase ya configurado
El proyecto "catalogo" ya tiene las tablas `products` y `settings`, el bucket público `catalogo` y las reglas de acceso. `config.js` ya trae la URL y la clave anon. No hace falta correr `setup.sql`: solo falta poner tu número de WhatsApp en `config.js`.
