#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#define IP "localhost" // the IP address client will be connecting to
#define PORT "9000" // the port client will be connecting to

int main(int argc, char *argv[]) {
  struct addrinfo hints, *servinfo;
  int sockfd;
  // first, load up address structs with getaddrinfo():
  memset(&hints, 0, sizeof hints);
  hints.ai_family = AF_UNSPEC; // use IPv4 or IPv6, whichever
  hints.ai_socktype = SOCK_STREAM; // TCP
  int info = getaddrinfo(IP, PORT, &hints, &servinfo);
  if (info != 0) {
    fprintf(stderr, "getaddrinfo: %s\n", gai_strerror(info));
    exit(EXIT_FAILURE);
  }
  // make a socket:
  sockfd = socket(servinfo->ai_family, servinfo->ai_socktype, servinfo->ai_protocol);
  if (sockfd == -1) {
    perror("socket");
    exit(EXIT_FAILURE);
  }
  printf("client: connecting...\n");
  int connection = connect(sockfd, servinfo->ai_addr, servinfo->ai_addrlen);
  if (connection == -1) {
    perror("connect");
    exit(EXIT_FAILURE);
  }
  else {
    printf("client: connected\n");
    char buf[255];
    printf("client: receiving message from server...\n");
    int recvMsg = recv(sockfd, buf, sizeof(buf), 0);
    if (recvMsg == -1) {
      perror("recv");
      exit(EXIT_FAILURE);
    }
    else {
      printf("client: received message from server\n");
      printf("Client: %s\n", buf);
    }
    printf("client: sending message to server...\n");
    int sent_bytes = send(sockfd, "Hello Server", 12, 0);
    if (sent_bytes == -1) {
      perror("send");
      exit(EXIT_FAILURE);
    }
    else {
      printf("client: sent message to server\n");
    }
  }
  freeaddrinfo(servinfo); // free the linked-list
  return EXIT_SUCCESS;
}
