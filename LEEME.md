# Catálogo ZIVI — todo gratis (Supabase + Vercel)

## 1. Base de datos (Supabase, plan gratis)
1. Crear cuenta en supabase.com → New project.
2. SQL Editor → pegar el contenido de `setup.sql` → Run.
3. Authentication → Users → Add user: tu email y contraseña (marcá "Auto confirm"). Esa es tu cuenta de administradora.
4. Authentication → Sign In / Providers → desactivar "Allow new users to sign up" (así nadie más puede registrarse).
5. Project Settings → API: copiá la **Project URL** y la clave **anon public**.

## 2. Configurar
Abrí `config.js` y completá la URL, la clave anon, tu número de WhatsApp (con código de país, sin +) y la moneda.

## 3. Publicar en Vercel (gratis)
- Opción fácil: vercel.com → Add New → Project → subí esta carpeta (o conectala desde GitHub) → Deploy. No necesita build.

## 4. Usar
- Catálogo: `tu-sitio.vercel.app`
- Administración: `tu-sitio.vercel.app/admin.html` → ingresás, cargás foto, precio y características.
