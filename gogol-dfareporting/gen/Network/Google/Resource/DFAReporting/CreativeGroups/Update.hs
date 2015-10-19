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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeGroups.update@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Update
    (
    -- * REST Resource
      CreativeGroupsUpdateResource

    -- * Creating a Request
    , creativeGroupsUpdate'
    , CreativeGroupsUpdate'

    -- * Request Lenses
    , cguProFileId
    , cguPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.update@ method which the
-- 'CreativeGroupsUpdate'' request conforms to.
type CreativeGroupsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] CreativeGroup :>
               Put '[JSON] CreativeGroup

-- | Updates an existing creative group.
--
-- /See:/ 'creativeGroupsUpdate'' smart constructor.
data CreativeGroupsUpdate' = CreativeGroupsUpdate'
    { _cguProFileId :: !Int64
    , _cguPayload   :: !CreativeGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cguProFileId'
--
-- * 'cguPayload'
creativeGroupsUpdate'
    :: Int64 -- ^ 'cguProFileId'
    -> CreativeGroup -- ^ 'cguPayload'
    -> CreativeGroupsUpdate'
creativeGroupsUpdate' pCguProFileId_ pCguPayload_ =
    CreativeGroupsUpdate'
    { _cguProFileId = pCguProFileId_
    , _cguPayload = pCguPayload_
    }

-- | User profile ID associated with this request.
cguProFileId :: Lens' CreativeGroupsUpdate' Int64
cguProFileId
  = lens _cguProFileId (\ s a -> s{_cguProFileId = a})

-- | Multipart request metadata.
cguPayload :: Lens' CreativeGroupsUpdate' CreativeGroup
cguPayload
  = lens _cguPayload (\ s a -> s{_cguPayload = a})

instance GoogleRequest CreativeGroupsUpdate' where
        type Rs CreativeGroupsUpdate' = CreativeGroup
        requestClient CreativeGroupsUpdate'{..}
          = go _cguProFileId (Just AltJSON) _cguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsUpdateResource)
                      mempty
