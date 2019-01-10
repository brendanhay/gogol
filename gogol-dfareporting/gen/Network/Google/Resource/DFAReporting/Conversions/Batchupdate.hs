{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Conversions.Batchupdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates existing conversions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.conversions.batchupdate@.
module Network.Google.Resource.DFAReporting.Conversions.Batchupdate
    (
    -- * REST Resource
      ConversionsBatchupdateResource

    -- * Creating a Request
    , conversionsBatchupdate
    , ConversionsBatchupdate

    -- * Request Lenses
    , conProFileId
    , conPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.conversions.batchupdate@ method which the
-- 'ConversionsBatchupdate' request conforms to.
type ConversionsBatchupdateResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "conversions" :>
               "batchupdate" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ConversionsBatchUpdateRequest :>
                     Post '[JSON] ConversionsBatchUpdateResponse

-- | Updates existing conversions.
--
-- /See:/ 'conversionsBatchupdate' smart constructor.
data ConversionsBatchupdate = ConversionsBatchupdate'
    { _conProFileId :: !(Textual Int64)
    , _conPayload   :: !ConversionsBatchUpdateRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionsBatchupdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conProFileId'
--
-- * 'conPayload'
conversionsBatchupdate
    :: Int64 -- ^ 'conProFileId'
    -> ConversionsBatchUpdateRequest -- ^ 'conPayload'
    -> ConversionsBatchupdate
conversionsBatchupdate pConProFileId_ pConPayload_ =
    ConversionsBatchupdate'
    { _conProFileId = _Coerce # pConProFileId_
    , _conPayload = pConPayload_
    }

-- | User profile ID associated with this request.
conProFileId :: Lens' ConversionsBatchupdate Int64
conProFileId
  = lens _conProFileId (\ s a -> s{_conProFileId = a})
      . _Coerce

-- | Multipart request metadata.
conPayload :: Lens' ConversionsBatchupdate ConversionsBatchUpdateRequest
conPayload
  = lens _conPayload (\ s a -> s{_conPayload = a})

instance GoogleRequest ConversionsBatchupdate where
        type Rs ConversionsBatchupdate =
             ConversionsBatchUpdateResponse
        type Scopes ConversionsBatchupdate =
             '["https://www.googleapis.com/auth/ddmconversions"]
        requestClient ConversionsBatchupdate'{..}
          = go _conProFileId (Just AltJSON) _conPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionsBatchupdateResource)
                      mempty
