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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a filters to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.get@.
module Network.Google.Resource.Analytics.Management.Filters.Get
    (
    -- * REST Resource
      ManagementFiltersGetResource

    -- * Creating a Request
    , managementFiltersGet
    , ManagementFiltersGet

    -- * Request Lenses
    , mfgFilterId
    , mfgAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.filters.get@ method which the
-- 'ManagementFiltersGet' request conforms to.
type ManagementFiltersGetResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "filters" :>
                 Capture "filterId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Filter

-- | Returns a filters to which the user has access.
--
-- /See:/ 'managementFiltersGet' smart constructor.
data ManagementFiltersGet = ManagementFiltersGet
    { _mfgFilterId  :: !Text
    , _mfgAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfgFilterId'
--
-- * 'mfgAccountId'
managementFiltersGet
    :: Text -- ^ 'mfgFilterId'
    -> Text -- ^ 'mfgAccountId'
    -> ManagementFiltersGet
managementFiltersGet pMfgFilterId_ pMfgAccountId_ =
    ManagementFiltersGet
    { _mfgFilterId = pMfgFilterId_
    , _mfgAccountId = pMfgAccountId_
    }

-- | Filter ID to retrieve filters for.
mfgFilterId :: Lens' ManagementFiltersGet Text
mfgFilterId
  = lens _mfgFilterId (\ s a -> s{_mfgFilterId = a})

-- | Account ID to retrieve filters for.
mfgAccountId :: Lens' ManagementFiltersGet Text
mfgAccountId
  = lens _mfgAccountId (\ s a -> s{_mfgAccountId = a})

instance GoogleRequest ManagementFiltersGet where
        type Rs ManagementFiltersGet = Filter
        requestClient ManagementFiltersGet{..}
          = go _mfgAccountId _mfgFilterId (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementFiltersGetResource)
                      mempty
