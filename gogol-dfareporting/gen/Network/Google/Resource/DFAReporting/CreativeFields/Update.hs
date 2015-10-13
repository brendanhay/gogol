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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsUpdate@.
module Network.Google.Resource.DFAReporting.CreativeFields.Update
    (
    -- * REST Resource
      CreativeFieldsUpdateResource

    -- * Creating a Request
    , creativeFieldsUpdate'
    , CreativeFieldsUpdate'

    -- * Request Lenses
    , cfuProFileId
    , cfuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsUpdate@ method which the
-- 'CreativeFieldsUpdate'' request conforms to.
type CreativeFieldsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] CreativeField :>
               Put '[JSON] CreativeField

-- | Updates an existing creative field.
--
-- /See:/ 'creativeFieldsUpdate'' smart constructor.
data CreativeFieldsUpdate' = CreativeFieldsUpdate'
    { _cfuProFileId :: !Int64
    , _cfuPayload   :: !CreativeField
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfuProFileId'
--
-- * 'cfuPayload'
creativeFieldsUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativeField -- ^ 'payload'
    -> CreativeFieldsUpdate'
creativeFieldsUpdate' pCfuProFileId_ pCfuPayload_ =
    CreativeFieldsUpdate'
    { _cfuProFileId = pCfuProFileId_
    , _cfuPayload = pCfuPayload_
    }

-- | User profile ID associated with this request.
cfuProFileId :: Lens' CreativeFieldsUpdate' Int64
cfuProFileId
  = lens _cfuProFileId (\ s a -> s{_cfuProFileId = a})

-- | Multipart request metadata.
cfuPayload :: Lens' CreativeFieldsUpdate' CreativeField
cfuPayload
  = lens _cfuPayload (\ s a -> s{_cfuPayload = a})

instance GoogleRequest CreativeFieldsUpdate' where
        type Rs CreativeFieldsUpdate' = CreativeField
        requestClient CreativeFieldsUpdate'{..}
          = go _cfuProFileId (Just AltJSON) _cfuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsUpdateResource)
                      mempty
