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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a web property to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.get@.
module Network.Google.Resource.Analytics.Management.WebProperties.Get
    (
    -- * REST Resource
      ManagementWebPropertiesGetResource

    -- * Creating a Request
    , managementWebPropertiesGet
    , ManagementWebPropertiesGet

    -- * Request Lenses
    , mwpgWebPropertyId
    , mwpgAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.webproperties.get@ method which the
-- 'ManagementWebPropertiesGet' request conforms to.
type ManagementWebPropertiesGetResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] WebProperty

-- | Gets a web property to which the user has access.
--
-- /See:/ 'managementWebPropertiesGet' smart constructor.
data ManagementWebPropertiesGet =
  ManagementWebPropertiesGet'
    { _mwpgWebPropertyId :: !Text
    , _mwpgAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementWebPropertiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpgWebPropertyId'
--
-- * 'mwpgAccountId'
managementWebPropertiesGet
    :: Text -- ^ 'mwpgWebPropertyId'
    -> Text -- ^ 'mwpgAccountId'
    -> ManagementWebPropertiesGet
managementWebPropertiesGet pMwpgWebPropertyId_ pMwpgAccountId_ =
  ManagementWebPropertiesGet'
    {_mwpgWebPropertyId = pMwpgWebPropertyId_, _mwpgAccountId = pMwpgAccountId_}


-- | ID to retrieve the web property for.
mwpgWebPropertyId :: Lens' ManagementWebPropertiesGet Text
mwpgWebPropertyId
  = lens _mwpgWebPropertyId
      (\ s a -> s{_mwpgWebPropertyId = a})

-- | Account ID to retrieve the web property for.
mwpgAccountId :: Lens' ManagementWebPropertiesGet Text
mwpgAccountId
  = lens _mwpgAccountId
      (\ s a -> s{_mwpgAccountId = a})

instance GoogleRequest ManagementWebPropertiesGet
         where
        type Rs ManagementWebPropertiesGet = WebProperty
        type Scopes ManagementWebPropertiesGet =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementWebPropertiesGet'{..}
          = go _mwpgAccountId _mwpgWebPropertyId (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementWebPropertiesGetResource)
                      mempty
