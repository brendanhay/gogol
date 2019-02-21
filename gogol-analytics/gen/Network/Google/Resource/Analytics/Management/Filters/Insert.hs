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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.insert@.
module Network.Google.Resource.Analytics.Management.Filters.Insert
    (
    -- * REST Resource
      ManagementFiltersInsertResource

    -- * Creating a Request
    , managementFiltersInsert
    , ManagementFiltersInsert

    -- * Request Lenses
    , mfiPayload
    , mfiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.filters.insert@ method which the
-- 'ManagementFiltersInsert' request conforms to.
type ManagementFiltersInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "filters" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Filter :> Post '[JSON] Filter

-- | Create a new filter.
--
-- /See:/ 'managementFiltersInsert' smart constructor.
data ManagementFiltersInsert =
  ManagementFiltersInsert'
    { _mfiPayload   :: !Filter
    , _mfiAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementFiltersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiPayload'
--
-- * 'mfiAccountId'
managementFiltersInsert
    :: Filter -- ^ 'mfiPayload'
    -> Text -- ^ 'mfiAccountId'
    -> ManagementFiltersInsert
managementFiltersInsert pMfiPayload_ pMfiAccountId_ =
  ManagementFiltersInsert'
    {_mfiPayload = pMfiPayload_, _mfiAccountId = pMfiAccountId_}


-- | Multipart request metadata.
mfiPayload :: Lens' ManagementFiltersInsert Filter
mfiPayload
  = lens _mfiPayload (\ s a -> s{_mfiPayload = a})

-- | Account ID to create filter for.
mfiAccountId :: Lens' ManagementFiltersInsert Text
mfiAccountId
  = lens _mfiAccountId (\ s a -> s{_mfiAccountId = a})

instance GoogleRequest ManagementFiltersInsert where
        type Rs ManagementFiltersInsert = Filter
        type Scopes ManagementFiltersInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementFiltersInsert'{..}
          = go _mfiAccountId (Just AltJSON) _mfiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementFiltersInsertResource)
                      mempty
