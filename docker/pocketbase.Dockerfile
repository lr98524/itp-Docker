FROM scratch AS empty
COPY ./executables/pocketbase /bin/pb
ENTRYPOINT [ "/bin/pb" ]

#this is the command args passed to the pb executable
CMD ["serve","--http","0.0.0.0:95" ]
EXPOSE 95/tcp
