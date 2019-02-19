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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.update@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Update
    (
    -- * REST Resource
      AdvertiserGroupsUpdateResource

    -- * Creating a Request
    , advertiserGroupsUpdate
    , AdvertiserGroupsUpdate

    -- * Request Lenses
    , aguProFileId
    , aguPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.update@ method which the
-- 'AdvertiserGroupsUpdate' request conforms to.
type AdvertiserGroupsUpdateResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] AdvertiserGroup :>
                   Put '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group.
--
-- /See:/ 'advertiserGroupsUpdate' smart constructor.
data AdvertiserGroupsUpdate =
  AdvertiserGroupsUpdate'
    { _aguProFileId :: !(Textual Int64)
    , _aguPayload   :: !AdvertiserGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aguProFileId'
--
-- * 'aguPayload'
advertiserGroupsUpdate
    :: Int64 -- ^ 'aguProFileId'
    -> AdvertiserGroup -- ^ 'aguPayload'
    -> AdvertiserGroupsUpdate
advertiserGroupsUpdate pAguProFileId_ pAguPayload_ =
  AdvertiserGroupsUpdate'
    {_aguProFileId = _Coerce # pAguProFileId_, _aguPayload = pAguPayload_}


-- | User profile ID associated with this request.
aguProFileId :: Lens' AdvertiserGroupsUpdate Int64
aguProFileId
  = lens _aguProFileId (\ s a -> s{_aguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aguPayload :: Lens' AdvertiserGroupsUpdate AdvertiserGroup
aguPayload
  = lens _aguPayload (\ s a -> s{_aguPayload = a})

instance GoogleRequest AdvertiserGroupsUpdate where
        type Rs AdvertiserGroupsUpdate = AdvertiserGroup
        type Scopes AdvertiserGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsUpdate'{..}
          = go _aguProFileId (Just AltJSON) _aguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsUpdateResource)
                      mempty
