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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.update@.
module Network.Google.Resource.DFAReporting.Creatives.Update
    (
    -- * REST Resource
      CreativesUpdateResource

    -- * Creating a Request
    , creativesUpdate
    , CreativesUpdate

    -- * Request Lenses
    , creProFileId
    , crePayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.update@ method which the
-- 'CreativesUpdate' request conforms to.
type CreativesUpdateResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Creative :> Put '[JSON] Creative

-- | Updates an existing creative.
--
-- /See:/ 'creativesUpdate' smart constructor.
data CreativesUpdate = CreativesUpdate
    { _creProFileId :: !(Textual Int64)
    , _crePayload   :: !Creative
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creProFileId'
--
-- * 'crePayload'
creativesUpdate
    :: Int64 -- ^ 'creProFileId'
    -> Creative -- ^ 'crePayload'
    -> CreativesUpdate
creativesUpdate pCreProFileId_ pCrePayload_ =
    CreativesUpdate
    { _creProFileId = _Coerce # pCreProFileId_
    , _crePayload = pCrePayload_
    }

-- | User profile ID associated with this request.
creProFileId :: Lens' CreativesUpdate Int64
creProFileId
  = lens _creProFileId (\ s a -> s{_creProFileId = a})
      . _Coerce

-- | Multipart request metadata.
crePayload :: Lens' CreativesUpdate Creative
crePayload
  = lens _crePayload (\ s a -> s{_crePayload = a})

instance GoogleRequest CreativesUpdate where
        type Rs CreativesUpdate = Creative
        requestClient CreativesUpdate{..}
          = go _creProFileId (Just AltJSON) _crePayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesUpdateResource)
                      mempty
