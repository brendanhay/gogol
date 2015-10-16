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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsPatch@.
module Network.Google.Resource.DFAReporting.Ads.Patch
    (
    -- * REST Resource
      AdsPatchResource

    -- * Creating a Request
    , adsPatch'
    , AdsPatch'

    -- * Request Lenses
    , appProFileId
    , appPayload
    , appId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsPatch@ method which the
-- 'AdsPatch'' request conforms to.
type AdsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "id" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Ad :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch'' smart constructor.
data AdsPatch' = AdsPatch'
    { _appProFileId :: !Int64
    , _appPayload   :: !Ad
    , _appId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appProFileId'
--
-- * 'appPayload'
--
-- * 'appId'
adsPatch'
    :: Int64 -- ^ 'profileId'
    -> Ad -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AdsPatch'
adsPatch' pAppProFileId_ pAppPayload_ pAppId_ =
    AdsPatch'
    { _appProFileId = pAppProFileId_
    , _appPayload = pAppPayload_
    , _appId = pAppId_
    }

-- | User profile ID associated with this request.
appProFileId :: Lens' AdsPatch' Int64
appProFileId
  = lens _appProFileId (\ s a -> s{_appProFileId = a})

-- | Multipart request metadata.
appPayload :: Lens' AdsPatch' Ad
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | Ad ID.
appId :: Lens' AdsPatch' Int64
appId = lens _appId (\ s a -> s{_appId = a})

instance GoogleRequest AdsPatch' where
        type Rs AdsPatch' = Ad
        requestClient AdsPatch'{..}
          = go _appProFileId (Just _appId) (Just AltJSON)
              _appPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsPatchResource)
                      mempty
