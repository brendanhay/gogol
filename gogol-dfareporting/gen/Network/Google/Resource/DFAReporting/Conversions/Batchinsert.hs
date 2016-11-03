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
-- Module      : Network.Google.Resource.DFAReporting.Conversions.Batchinsert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts conversions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.conversions.batchinsert@.
module Network.Google.Resource.DFAReporting.Conversions.Batchinsert
    (
    -- * REST Resource
      ConversionsBatchinsertResource

    -- * Creating a Request
    , conversionsBatchinsert
    , ConversionsBatchinsert

    -- * Request Lenses
    , cbProFileId
    , cbPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.conversions.batchinsert@ method which the
-- 'ConversionsBatchinsert' request conforms to.
type ConversionsBatchinsertResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "conversions" :>
               "batchinsert" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ConversionsBatchInsertRequest :>
                     Post '[JSON] ConversionsBatchInsertResponse

-- | Inserts conversions.
--
-- /See:/ 'conversionsBatchinsert' smart constructor.
data ConversionsBatchinsert = ConversionsBatchinsert'
    { _cbProFileId :: !(Textual Int64)
    , _cbPayload   :: !ConversionsBatchInsertRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionsBatchinsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbProFileId'
--
-- * 'cbPayload'
conversionsBatchinsert
    :: Int64 -- ^ 'cbProFileId'
    -> ConversionsBatchInsertRequest -- ^ 'cbPayload'
    -> ConversionsBatchinsert
conversionsBatchinsert pCbProFileId_ pCbPayload_ =
    ConversionsBatchinsert'
    { _cbProFileId = _Coerce # pCbProFileId_
    , _cbPayload = pCbPayload_
    }

-- | User profile ID associated with this request.
cbProFileId :: Lens' ConversionsBatchinsert Int64
cbProFileId
  = lens _cbProFileId (\ s a -> s{_cbProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
cbPayload :: Lens' ConversionsBatchinsert ConversionsBatchInsertRequest
cbPayload
  = lens _cbPayload (\ s a -> s{_cbPayload = a})

instance GoogleRequest ConversionsBatchinsert where
        type Rs ConversionsBatchinsert =
             ConversionsBatchInsertResponse
        type Scopes ConversionsBatchinsert =
             '["https://www.googleapis.com/auth/ddmconversions"]
        requestClient ConversionsBatchinsert'{..}
          = go _cbProFileId (Just AltJSON) _cbPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionsBatchinsertResource)
                      mempty
