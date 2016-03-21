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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing filter. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.patch@.
module Network.Google.Resource.Analytics.Management.Filters.Patch
    (
    -- * REST Resource
      ManagementFiltersPatchResource

    -- * Creating a Request
    , managementFiltersPatch
    , ManagementFiltersPatch

    -- * Request Lenses
    , mfpFilterId
    , mfpPayload
    , mfpAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.filters.patch@ method which the
-- 'ManagementFiltersPatch' request conforms to.
type ManagementFiltersPatchResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "filters" :>
                 Capture "filterId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Filter :> Patch '[JSON] Filter

-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ 'managementFiltersPatch' smart constructor.
data ManagementFiltersPatch = ManagementFiltersPatch'
    { _mfpFilterId  :: !Text
    , _mfpPayload   :: !Filter
    , _mfpAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfpFilterId'
--
-- * 'mfpPayload'
--
-- * 'mfpAccountId'
managementFiltersPatch
    :: Text -- ^ 'mfpFilterId'
    -> Filter -- ^ 'mfpPayload'
    -> Text -- ^ 'mfpAccountId'
    -> ManagementFiltersPatch
managementFiltersPatch pMfpFilterId_ pMfpPayload_ pMfpAccountId_ =
    ManagementFiltersPatch'
    { _mfpFilterId = pMfpFilterId_
    , _mfpPayload = pMfpPayload_
    , _mfpAccountId = pMfpAccountId_
    }

-- | ID of the filter to be updated.
mfpFilterId :: Lens' ManagementFiltersPatch Text
mfpFilterId
  = lens _mfpFilterId (\ s a -> s{_mfpFilterId = a})

-- | Multipart request metadata.
mfpPayload :: Lens' ManagementFiltersPatch Filter
mfpPayload
  = lens _mfpPayload (\ s a -> s{_mfpPayload = a})

-- | Account ID to which the filter belongs.
mfpAccountId :: Lens' ManagementFiltersPatch Text
mfpAccountId
  = lens _mfpAccountId (\ s a -> s{_mfpAccountId = a})

instance GoogleRequest ManagementFiltersPatch where
        type Rs ManagementFiltersPatch = Filter
        type Scopes ManagementFiltersPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementFiltersPatch'{..}
          = go _mfpAccountId _mfpFilterId (Just AltJSON)
              _mfpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementFiltersPatchResource)
                      mempty
