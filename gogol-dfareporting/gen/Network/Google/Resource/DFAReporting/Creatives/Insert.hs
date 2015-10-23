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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.insert@.
module Network.Google.Resource.DFAReporting.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert
    , CreativesInsert

    -- * Request Lenses
    , ciProFileId
    , ciPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.insert@ method which the
-- 'CreativesInsert' request conforms to.
type CreativesInsertResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "creatives" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Inserts a new creative.
--
-- /See:/ 'creativesInsert' smart constructor.
data CreativesInsert = CreativesInsert
    { _ciProFileId :: !(JSONText Int64)
    , _ciPayload   :: !Creative
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciProFileId'
--
-- * 'ciPayload'
creativesInsert
    :: Int64 -- ^ 'ciProFileId'
    -> Creative -- ^ 'ciPayload'
    -> CreativesInsert
creativesInsert pCiProFileId_ pCiPayload_ =
    CreativesInsert
    { _ciProFileId = pCiProFileId_
    , _ciPayload = pCiPayload_
    }

-- | User profile ID associated with this request.
ciProFileId :: Lens' CreativesInsert Int64
ciProFileId
  = lens _ciProFileId (\ s a -> s{_ciProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
ciPayload :: Lens' CreativesInsert Creative
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest CreativesInsert where
        type Rs CreativesInsert = Creative
        requestClient CreativesInsert{..}
          = go _ciProFileId (Just AltJSON) _ciPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesInsertResource)
                      mempty
