/* -*- c++ -*- */
/* 
 * Copyright 2017 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_H
#define INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_H

#include <codetracking_despreading/api.h>
#include <gnuradio/sync_decimator.h>

namespace gr {
  namespace codetracking_despreading {

    /*!
     * \brief <+description of block+>
     * \ingroup codetracking_despreading
     *
     */
    class CODETRACKING_DESPREADING_API zcz_despreading : virtual public gr::sync_decimator
    {
     public:
      typedef boost::shared_ptr<zcz_despreading> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of codetracking_despreading::zcz_despreading.
       *
       * To avoid accidental use of raw pointers, codetracking_despreading::zcz_despreading's
       * constructor is in a private implementation
       * class. codetracking_despreading::zcz_despreading::make is the public interface for
       * creating new instances.
       */
      static sptr make(float arg , float user);
    };

  } // namespace codetracking_despreading
} // namespace gr

#endif /* INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_H */

