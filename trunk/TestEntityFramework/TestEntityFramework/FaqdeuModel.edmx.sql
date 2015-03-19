
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/17/2015 14:27:37
-- Generated from EDMX file: D:\Oscar\EntityfwkRepo\TestEntityFramework\TestEntityFramework\FaqdeuModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TestEF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Perfil]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PerfilUsuario] DROP CONSTRAINT [FK_PerfilUsuario_Perfil];
GO
IF OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PerfilUsuario] DROP CONSTRAINT [FK_PerfilUsuario_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraCarrerasxEntidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarrerasxEntidades] DROP CONSTRAINT [FK_CarreraCarrerasxEntidad];
GO
IF OBJECT_ID(N'[dbo].[FK_EntidadCarrerasxEntidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarrerasxEntidades] DROP CONSTRAINT [FK_EntidadCarrerasxEntidad];
GO
IF OBJECT_ID(N'[dbo].[FK_CarrerasxEntidadProfesoresxCarreraxEntidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfesoresxCarreraesxEntidades] DROP CONSTRAINT [FK_CarrerasxEntidadProfesoresxCarreraxEntidad];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfesorProfesoresxCarreraxEntidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfesoresxCarreraesxEntidades] DROP CONSTRAINT [FK_ProfesorProfesoresxCarreraxEntidad];
GO
IF OBJECT_ID(N'[dbo].[FK_FormularioPregunta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Preguntas] DROP CONSTRAINT [FK_FormularioPregunta];
GO
IF OBJECT_ID(N'[dbo].[FK_EvaluacionRespuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Respuestas] DROP CONSTRAINT [FK_EvaluacionRespuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_FormularioEvaluacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluaciones] DROP CONSTRAINT [FK_FormularioEvaluacion];
GO
IF OBJECT_ID(N'[dbo].[FK_PreguntaRespuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Respuestas] DROP CONSTRAINT [FK_PreguntaRespuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioEvaluacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluaciones] DROP CONSTRAINT [FK_UsuarioEvaluacion];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfesoresxCarreraxEntidadEvaluacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluaciones] DROP CONSTRAINT [FK_ProfesoresxCarreraxEntidadEvaluacion];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Perfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perfiles];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO
IF OBJECT_ID(N'[dbo].[Entidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entidades];
GO
IF OBJECT_ID(N'[dbo].[Profesores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profesores];
GO
IF OBJECT_ID(N'[dbo].[Carreras]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carreras];
GO
IF OBJECT_ID(N'[dbo].[CarrerasxEntidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarrerasxEntidades];
GO
IF OBJECT_ID(N'[dbo].[ProfesoresxCarreraesxEntidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfesoresxCarreraesxEntidades];
GO
IF OBJECT_ID(N'[dbo].[Formularios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Formularios];
GO
IF OBJECT_ID(N'[dbo].[Preguntas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Preguntas];
GO
IF OBJECT_ID(N'[dbo].[Evaluaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Evaluaciones];
GO
IF OBJECT_ID(N'[dbo].[Respuestas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Respuestas];
GO
IF OBJECT_ID(N'[dbo].[PerfilUsuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PerfilUsuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Perfiles'
CREATE TABLE [dbo].[Perfiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(128)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(128)  NOT NULL,
    [ApellidoPaterno] nvarchar(128)  NOT NULL,
    [ApellidoMaterno] nvarchar(128)  NOT NULL,
    [Email] nvarchar(128)  NOT NULL,
    [Clave] nvarchar(256)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NOT NULL,
    [FechaUltimoAcceso] datetime  NULL,
    [FechaNacimiento] datetime  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entidades'
CREATE TABLE [dbo].[Entidades] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(256)  NOT NULL,
    [Tipo] nvarchar(1)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Profesores'
CREATE TABLE [dbo].[Profesores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Carreras'
CREATE TABLE [dbo].[Carreras] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(256)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CarrerasxEntidades'
CREATE TABLE [dbo].[CarrerasxEntidades] (
    [CarreraId] int  NOT NULL,
    [EntidadId] int  NOT NULL
);
GO

-- Creating table 'ProfesoresxCarreraesxEntidades'
CREATE TABLE [dbo].[ProfesoresxCarreraesxEntidades] (
    [CarrerasxEntidadCarreraId] int  NOT NULL,
    [CarrerasxEntidadEntidadId] int  NOT NULL,
    [ProfesorId] int  NOT NULL
);
GO

-- Creating table 'Formularios'
CREATE TABLE [dbo].[Formularios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Versión] nvarchar(max)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaModificacion] datetime  NULL
);
GO

-- Creating table 'Preguntas'
CREATE TABLE [dbo].[Preguntas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [FormularioId] int  NOT NULL
);
GO

-- Creating table 'Evaluaciones'
CREATE TABLE [dbo].[Evaluaciones] (
    [FechaCreacion] nvarchar(max)  NOT NULL,
    [FechaModificacion] nvarchar(max)  NOT NULL,
    [Tags] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [FormularioId] int  NOT NULL,
    [UsuarioId] int  NOT NULL,
    [ProfesoresxCarreraxEntidadCarrerasxEntidadCarreraId] int  NOT NULL,
    [ProfesoresxCarreraxEntidadCarrerasxEntidadEntidadId] int  NOT NULL,
    [ProfesoresxCarreraxEntidadProfesorId] int  NOT NULL
);
GO

-- Creating table 'Respuestas'
CREATE TABLE [dbo].[Respuestas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Valor] nvarchar(max)  NOT NULL,
    [EvaluacionId] int  NOT NULL,
    [PreguntaId] int  NOT NULL,
    [PreguntaFormularioId] int  NOT NULL
);
GO

-- Creating table 'PerfilUsuario'
CREATE TABLE [dbo].[PerfilUsuario] (
    [Perfiles_Id] int  NOT NULL,
    [Usuarios_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Perfiles'
ALTER TABLE [dbo].[Perfiles]
ADD CONSTRAINT [PK_Perfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entidades'
ALTER TABLE [dbo].[Entidades]
ADD CONSTRAINT [PK_Entidades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Profesores'
ALTER TABLE [dbo].[Profesores]
ADD CONSTRAINT [PK_Profesores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Carreras'
ALTER TABLE [dbo].[Carreras]
ADD CONSTRAINT [PK_Carreras]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [CarreraId], [EntidadId] in table 'CarrerasxEntidades'
ALTER TABLE [dbo].[CarrerasxEntidades]
ADD CONSTRAINT [PK_CarrerasxEntidades]
    PRIMARY KEY CLUSTERED ([CarreraId], [EntidadId] ASC);
GO

-- Creating primary key on [CarrerasxEntidadCarreraId], [CarrerasxEntidadEntidadId], [ProfesorId] in table 'ProfesoresxCarreraesxEntidades'
ALTER TABLE [dbo].[ProfesoresxCarreraesxEntidades]
ADD CONSTRAINT [PK_ProfesoresxCarreraesxEntidades]
    PRIMARY KEY CLUSTERED ([CarrerasxEntidadCarreraId], [CarrerasxEntidadEntidadId], [ProfesorId] ASC);
GO

-- Creating primary key on [Id] in table 'Formularios'
ALTER TABLE [dbo].[Formularios]
ADD CONSTRAINT [PK_Formularios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [FormularioId] in table 'Preguntas'
ALTER TABLE [dbo].[Preguntas]
ADD CONSTRAINT [PK_Preguntas]
    PRIMARY KEY CLUSTERED ([Id], [FormularioId] ASC);
GO

-- Creating primary key on [Id] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [PK_Evaluaciones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Respuestas'
ALTER TABLE [dbo].[Respuestas]
ADD CONSTRAINT [PK_Respuestas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Perfiles_Id], [Usuarios_Id] in table 'PerfilUsuario'
ALTER TABLE [dbo].[PerfilUsuario]
ADD CONSTRAINT [PK_PerfilUsuario]
    PRIMARY KEY NONCLUSTERED ([Perfiles_Id], [Usuarios_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Perfiles_Id] in table 'PerfilUsuario'
ALTER TABLE [dbo].[PerfilUsuario]
ADD CONSTRAINT [FK_PerfilUsuario_Perfil]
    FOREIGN KEY ([Perfiles_Id])
    REFERENCES [dbo].[Perfiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Usuarios_Id] in table 'PerfilUsuario'
ALTER TABLE [dbo].[PerfilUsuario]
ADD CONSTRAINT [FK_PerfilUsuario_Usuario]
    FOREIGN KEY ([Usuarios_Id])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PerfilUsuario_Usuario'
CREATE INDEX [IX_FK_PerfilUsuario_Usuario]
ON [dbo].[PerfilUsuario]
    ([Usuarios_Id]);
GO

-- Creating foreign key on [CarreraId] in table 'CarrerasxEntidades'
ALTER TABLE [dbo].[CarrerasxEntidades]
ADD CONSTRAINT [FK_CarreraCarrerasxEntidad]
    FOREIGN KEY ([CarreraId])
    REFERENCES [dbo].[Carreras]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [EntidadId] in table 'CarrerasxEntidades'
ALTER TABLE [dbo].[CarrerasxEntidades]
ADD CONSTRAINT [FK_EntidadCarrerasxEntidad]
    FOREIGN KEY ([EntidadId])
    REFERENCES [dbo].[Entidades]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntidadCarrerasxEntidad'
CREATE INDEX [IX_FK_EntidadCarrerasxEntidad]
ON [dbo].[CarrerasxEntidades]
    ([EntidadId]);
GO

-- Creating foreign key on [CarrerasxEntidadCarreraId], [CarrerasxEntidadEntidadId] in table 'ProfesoresxCarreraesxEntidades'
ALTER TABLE [dbo].[ProfesoresxCarreraesxEntidades]
ADD CONSTRAINT [FK_CarrerasxEntidadProfesoresxCarreraxEntidad]
    FOREIGN KEY ([CarrerasxEntidadCarreraId], [CarrerasxEntidadEntidadId])
    REFERENCES [dbo].[CarrerasxEntidades]
        ([CarreraId], [EntidadId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProfesorId] in table 'ProfesoresxCarreraesxEntidades'
ALTER TABLE [dbo].[ProfesoresxCarreraesxEntidades]
ADD CONSTRAINT [FK_ProfesorProfesoresxCarreraxEntidad]
    FOREIGN KEY ([ProfesorId])
    REFERENCES [dbo].[Profesores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfesorProfesoresxCarreraxEntidad'
CREATE INDEX [IX_FK_ProfesorProfesoresxCarreraxEntidad]
ON [dbo].[ProfesoresxCarreraesxEntidades]
    ([ProfesorId]);
GO

-- Creating foreign key on [FormularioId] in table 'Preguntas'
ALTER TABLE [dbo].[Preguntas]
ADD CONSTRAINT [FK_FormularioPregunta]
    FOREIGN KEY ([FormularioId])
    REFERENCES [dbo].[Formularios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FormularioPregunta'
CREATE INDEX [IX_FK_FormularioPregunta]
ON [dbo].[Preguntas]
    ([FormularioId]);
GO

-- Creating foreign key on [EvaluacionId] in table 'Respuestas'
ALTER TABLE [dbo].[Respuestas]
ADD CONSTRAINT [FK_EvaluacionRespuesta]
    FOREIGN KEY ([EvaluacionId])
    REFERENCES [dbo].[Evaluaciones]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EvaluacionRespuesta'
CREATE INDEX [IX_FK_EvaluacionRespuesta]
ON [dbo].[Respuestas]
    ([EvaluacionId]);
GO

-- Creating foreign key on [FormularioId] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [FK_FormularioEvaluacion]
    FOREIGN KEY ([FormularioId])
    REFERENCES [dbo].[Formularios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FormularioEvaluacion'
CREATE INDEX [IX_FK_FormularioEvaluacion]
ON [dbo].[Evaluaciones]
    ([FormularioId]);
GO

-- Creating foreign key on [PreguntaId], [PreguntaFormularioId] in table 'Respuestas'
ALTER TABLE [dbo].[Respuestas]
ADD CONSTRAINT [FK_PreguntaRespuesta]
    FOREIGN KEY ([PreguntaId], [PreguntaFormularioId])
    REFERENCES [dbo].[Preguntas]
        ([Id], [FormularioId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PreguntaRespuesta'
CREATE INDEX [IX_FK_PreguntaRespuesta]
ON [dbo].[Respuestas]
    ([PreguntaId], [PreguntaFormularioId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [FK_UsuarioEvaluacion]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioEvaluacion'
CREATE INDEX [IX_FK_UsuarioEvaluacion]
ON [dbo].[Evaluaciones]
    ([UsuarioId]);
GO

-- Creating foreign key on [ProfesoresxCarreraxEntidadCarrerasxEntidadCarreraId], [ProfesoresxCarreraxEntidadCarrerasxEntidadEntidadId], [ProfesoresxCarreraxEntidadProfesorId] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [FK_ProfesoresxCarreraxEntidadEvaluacion]
    FOREIGN KEY ([ProfesoresxCarreraxEntidadCarrerasxEntidadCarreraId], [ProfesoresxCarreraxEntidadCarrerasxEntidadEntidadId], [ProfesoresxCarreraxEntidadProfesorId])
    REFERENCES [dbo].[ProfesoresxCarreraesxEntidades]
        ([CarrerasxEntidadCarreraId], [CarrerasxEntidadEntidadId], [ProfesorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfesoresxCarreraxEntidadEvaluacion'
CREATE INDEX [IX_FK_ProfesoresxCarreraxEntidadEvaluacion]
ON [dbo].[Evaluaciones]
    ([ProfesoresxCarreraxEntidadCarrerasxEntidadCarreraId], [ProfesoresxCarreraxEntidadCarrerasxEntidadEntidadId], [ProfesoresxCarreraxEntidadProfesorId]);
GO

/*
set dateformat DMY
GO

insert into Entidades values ('UPC','U','17/03/2015',null,'A');
insert into Entidades values ('ULima','U','17/03/2015',null,'A');
insert into Entidades values ('Esan','U','17/03/2015',null,'A');
insert into Entidades values ('Cibertec','I','17/03/2015',null,'A');
insert into Entidades values ('ISIL','I','17/03/2015',null,'A');

insert into Carreras values ('Ing. de sistemas','17/03/2015',null,'A');
insert into Carreras values ('Ing. industrial','17/03/2015',null,'A');
insert into Carreras values ('Administración','17/03/2015',null,'A');
insert into Carreras values ('Marketing','17/03/2015',null,'A');
insert into Carreras values ('Diseño grafico','17/03/2015',null,'A');
insert into Carreras values ('Computación e informática','17/03/2015',null,'A');

--Carrera / Entidad
insert into CarrerasxEntidades values(1,1);
insert into CarrerasxEntidades values(1,2);
insert into CarrerasxEntidades values(1,3);
insert into CarrerasxEntidades values(2,1);
insert into CarrerasxEntidades values(2,2);
insert into CarrerasxEntidades values(2,3);
insert into CarrerasxEntidades values(3,1);
insert into CarrerasxEntidades values(3,3);
insert into CarrerasxEntidades values(4,1);
insert into CarrerasxEntidades values(4,2);
insert into CarrerasxEntidades values(5,4);
insert into CarrerasxEntidades values(5,5);
insert into CarrerasxEntidades values(6,4);

insert into Profesores values('Fernando Alvis','17/03/2015',null,'A');
insert into Profesores values('James Tong','17/03/2015',null,'A');
insert into Profesores values('Victor Quiroz','17/03/2015',null,'A');
insert into Profesores values('Myriam Yana','17/03/2015',null,'A');
insert into Profesores values('Margoth Starke','17/03/2015',null,'A');

insert into ProfesoresxCarreraesxEntidades values (1,1,1);
insert into ProfesoresxCarreraesxEntidades values (1,2,1);
insert into ProfesoresxCarreraesxEntidades values (1,3,1);
insert into ProfesoresxCarreraesxEntidades values (6,4,1);

insert into ProfesoresxCarreraesxEntidades values (2,1,2);
insert into ProfesoresxCarreraesxEntidades values (3,1,2);
insert into ProfesoresxCarreraesxEntidades values (2,3,2);
insert into ProfesoresxCarreraesxEntidades values (2,2,2);
insert into ProfesoresxCarreraesxEntidades values (3,3,2);

insert into ProfesoresxCarreraesxEntidades values (3,1,3);
insert into ProfesoresxCarreraesxEntidades values (5,4,3);
insert into ProfesoresxCarreraesxEntidades values (5,5,3);

insert into ProfesoresxCarreraesxEntidades values (4,1,5);
insert into ProfesoresxCarreraesxEntidades values (4,2,5);
insert into ProfesoresxCarreraesxEntidades values (5,4,5);
insert into ProfesoresxCarreraesxEntidades values (5,5,5);

insert into ProfesoresxCarreraesxEntidades values (3,1,4);

insert into Formularios values ('Formulario 1','1.0',getdate(),null);

insert into Preguntas values ('Llega a tiempo a clases?','',1);
insert into Preguntas values ('Entrega las notas en el tiempo acordado?','',1);
insert into Preguntas values ('Domina sus temas?','',1);
insert into Preguntas values ('Explica bien sus temas?','',1);
*/
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------