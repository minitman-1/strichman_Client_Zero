% Header START
%
% Zweck: Dieses Skript startet direkt den Bewertungsprozess.
%
% Skriptname: startEvaluationClient_Zero.m
% Funktion: startEvaluationClient_Zero
%
% Erstellt von: Bernd Schmidt
% Erstelldatum: 1. August 2024
%
% Änderungshistorie:
% Datum: 1. August 2024: Erstellt
%
% Funktionsart: Standalone-Funktion
%               User-Funktion
%
% Verwendete Funktionen:
%   - config(): Lädt die Konfigurationsdaten.
%   - fileListenerClient_x(): Startet den Bewertungsprozess.
%
% Listung der Anonymous-Funktion: (Keine vorhanden)
% Listung der Callback-Funktion: (Keine vorhanden)
%
% Syntax für die Verwendung: (nur im Falle einer Funktion)
%   startEvaluation()
%
%    Inputs/ Übergaben: Keine
%
%    Outputs/ Rückgaben: Keine
%
% Beispiele: (für die Verwendung der Funktion)
%   - Aufruf der Funktion ohne Eingaben:
%       startEvaluationClient_Zero();
%
% Header END
% clear all;clc;close all;
% Code STARTs
function startEvaluationClient_Zero()
    % Schritt 1: Verzeichnis des aktuellen Skripts bestimmen
    scriptDir = fileparts(mfilename('fullpath')); 
    fprintf('Aktuelles Skriptverzeichnis: %s\n', scriptDir);
    
    % Schritt 2: Drei Ebenen höher navigieren
    baseDir = fullfile(scriptDir, '..', '..', '..'); 
    fprintf('Basisverzeichnis (drei Ebenen höher): %s\n', baseDir);
    
    % Schritt 3: Verzeichnis zur Konfigurationsdatei hinzufügen
    configPath = fullfile(baseDir, 'config');
    fprintf('Pfad zur Konfigurationsdatei: %s\n', configPath);
    
    % Überprüfen, ob das Verzeichnis existiert
    if ~isfolder(configPath)
        error('Das Verzeichnis %s existiert nicht.', configPath);
    end
    addpath(configPath);
    
    % Schritt 4: Konfigurationsdaten laden
    cfg = config();
    fprintf('Konfigurationsdaten geladen.\n');
    
    % Schritt 5: Pfad zum Verzeichnis `functions` hinzufügen
    functionsPath = fullfile(baseDir, 'src', 'main', 'functions');
    fprintf('Pfad zum Verzeichnis functions: %s\n', functionsPath);
    
    % Überprüfen, ob das Verzeichnis existiert
    if ~isfolder(functionsPath)
        error('Das Verzeichnis %s existiert nicht.', functionsPath);
    end
    addpath(functionsPath);
    
    % Debug: Ausgabe des Pfads zur Funktion `fileListenerClient_x`
    fprintf('Pfad zur Funktion fileListenerClient_x hinzugefügt: %s\n', functionsPath);
    
    % Schritt 6: Bewertungsprozess starten
    fprintf('Bewertungsprozess wird gestartet...\n');
    fileListenerClient_x();
end

% function startEvaluation()
%     % Schritt 1: Verzeichnis des aktuellen Skripts bestimmen
%     scriptDir = fileparts(mfilename('fullpath')); 
%     fprintf('Aktuelles Skriptverzeichnis: %s\n', scriptDir);
% 
%     % Schritt 2: Drei Ebenen höher navigieren
%     baseDir = fullfile(scriptDir, '..', '..', '..')
%     fprintf('Basisverzeichnis (drei Ebenen höher): %s\n', baseDir);
% 
%     % Schritt 3: Verzeichnis zur Konfigurationsdatei hinzufügen
%     configPath = fullfile(baseDir, 'config');
%     fprintf('Pfad zur Konfigurationsdatei: %s\n', configPath);
% 
%     % Überprüfen, ob das Verzeichnis existiert
%     if ~isfolder(configPath)
%         error('Das Verzeichnis %s existiert nicht.', configPath);
%     end
%     addpath(configPath);
% 
%     % Schritt 4: Konfigurationsdaten laden
%     cfg = config();
%     fprintf('Konfigurationsdaten geladen.\n');
% 
%     % Schritt 5: Pfad zum Verzeichnis `functions` hinzufügen
%     functionsPath = fullfile(baseDir, 'src', 'main', 'functions');
%     fprintf('Pfad zum Verzeichnis functions: %s\n', functionsPath);
% 
%     % Überprüfen, ob das Verzeichnis existiert
%     if ~isfolder(functionsPath)
%         error('Das Verzeichnis %s existiert nicht.', functionsPath);
%     end
%     addpath(functionsPath);
% 
%     % Debug: Ausgabe des Pfads zur Funktion `fileListenerClient_x`
%     fprintf('Pfad zur Funktion fileListenerClient_x hinzugefügt: %s\n', functionsPath);
% 
%     % Schritt 6: Bewertungsprozess starten
%     fprintf('Bewertungsprozess wird gestartet...\n');
%     fileListenerClient_x();
% end







% Code ENDs
