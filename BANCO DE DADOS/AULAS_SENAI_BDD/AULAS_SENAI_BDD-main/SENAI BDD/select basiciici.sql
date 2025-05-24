USE spotifynew;

select * from spotifytop;

SELECT nomeArtista,nomeMusica FROM spotifytop
	WHERE nomeArtista = "Post Malone";
    
SELECT nomeArtista,nomeMusica,top10Vezes FROM spotifytop
	WHERE nomeArtista = "Drake" and top10Vezes > 1;
    
    
SELECT nomeArtista,nomeMusica,maiorPosicao FROM spotifytop
	WHERE maiorPosicao BETWEEN 6 AND 10;

SELECT nomeArtista,nomeMusica FROM spotifytop
	WHERE nomeArtista <> "Post Malone";
    
SELECT nomeArtista,nomeMusica,top10Vezes FROM spotifytop
	WHERE top10Vezes > 250;
    
SELECT nomeArtista,nomeMusica,top10Vezes FROM spotifytop
	WHERE nomeArtista > "Post Malone";
    
SELECT nomeArtista,nomeMusica,totalStreams FROM spotifytop
	WHERE totalStreams IS NULL;
    
SELECT nomeArtista,nomeMusica FROM spotifytop
	ORDER BY nomeArtista;

SELECT nomeArtista,nomeMusica FROM spotifytop
	ORDER BY nomeArtista ASC;

SELECT nomeArtista,nomeMusica FROM spotifytop
	ORDER BY nomeArtista DESC;

SELECT nomeArtista ,MIN(totalStreams) AS Menor FROM spotifytop
	WHERE nomeArtista = "Post Malone" ;
    
SELECT nomeArtista ,SUM(totalStreams) AS SOMA FROM spotifytop
	WHERE nomeArtista = "Post Malone" ;
    
SELECT nomeArtista ,AVG(totalStreams) AS MEDIA FROM spotifytop
	WHERE nomeArtista = "Post Malone" ;
    
SELECT nomeArtista,nomeMusica from spotifytop
		where nomeArtista LIKE "Michael%";
        
SELECT nomeArtista ,nomeMusica,min(totalStreams) FROM spotifytop
	WHERE nomeArtista = "Post Malone" 
    AND totalStreams = (SELECT min(totalStreams) FROM spotifytop WHERE nomeArtista = "Post Malone");
     
     
SELECT nomeArtista,COUNT(nomeArtista) FROM spotifytop
	GROUP BY nomeArtista ;
     