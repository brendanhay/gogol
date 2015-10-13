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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersDelete@.
module Network.Google.Resource.Analytics.Management.Filters.Delete
    (
    -- * REST Resource
      ManagementFiltersDeleteResource

    -- * Creating a Request
    , managementFiltersDelete'
    , ManagementFiltersDelete'

    -- * Request Lenses
    , mfdFilterId
    , mfdAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersDelete@ method which the
-- 'ManagementFiltersDelete'' request conforms to.
type ManagementFiltersDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Filter

-- | Delete a filter.
--
-- /See:/ 'managementFiltersDelete'' smart constructor.
data ManagementFiltersDelete' = ManagementFiltersDelete'
    { _mfdFilterId  :: !Text
    , _mfdAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfdFilterId'
--
-- * 'mfdAccountId'
managementFiltersDelete'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersDelete'
managementFiltersDelete' pMfdFilterId_ pMfdAccountId_ =
    ManagementFiltersDelete'
    { _mfdFilterId = pMfdFilterId_
    , _mfdAccountId = pMfdAccountId_
    }

-- | ID of the filter to be deleted.
mfdFilterId :: Lens' ManagementFiltersDelete' Text
mfdFilterId
  = lens _mfdFilterId (\ s a -> s{_mfdFilterId = a})

-- | Account ID to delete the filter for.
mfdAccountId :: Lens' ManagementFiltersDelete' Text
mfdAccountId
  = lens _mfdAccountId (\ s a -> s{_mfdAccountId = a})

instance GoogleRequest ManagementFiltersDelete' where
        type Rs ManagementFiltersDelete' = Filter
        requestClient ManagementFiltersDelete'{..}
          = go _mfdAccountId _mfdFilterId (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementFiltersDeleteResource)
                      mempty
