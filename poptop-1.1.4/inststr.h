/*
 * inststr.h
 *
 * Change process title
 * From code by C. S. Ananian
 *
 * $Id: inststr.h,v 1.1.1.1 2003/04/25 03:28:47 ken Exp $
 */

#ifndef _PPTPD_INSTSTR_H
#define _PPTPD_INSTSTR_H

#ifndef HAVE_SETPROCTITLE
void inststr(int argc, char **argv, char *src);
#endif

#endif	/* !_PPTPD_INSTSTR_H */
