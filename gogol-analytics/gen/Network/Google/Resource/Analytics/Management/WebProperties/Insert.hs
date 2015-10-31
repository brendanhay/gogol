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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.insert@.
module Network.Google.Resource.Analytics.Management.WebProperties.Insert
    (
    -- * REST Resource
      ManagementWebPropertiesInsertResource

    -- * Creating a Request
    , managementWebPropertiesInsert
    , ManagementWebPropertiesInsert

    -- * Request Lenses
    , mwpiPayload
    , mwpiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webproperties.insert@ method which the
-- 'ManagementWebPropertiesInsert' request conforms to.
type ManagementWebPropertiesInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] WebProperty :>
                     Post '[JSON] WebProperty

-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ 'managementWebPropertiesInsert' smart constructor.
data ManagementWebPropertiesInsert = ManagementWebPropertiesInsert
    { _mwpiPayload   :: !WebProperty
    , _mwpiAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpiPayload'
--
-- * 'mwpiAccountId'
managementWebPropertiesInsert
    :: WebProperty -- ^ 'mwpiPayload'
    -> Text -- ^ 'mwpiAccountId'
    -> ManagementWebPropertiesInsert
managementWebPropertiesInsert pMwpiPayload_ pMwpiAccountId_ =
    ManagementWebPropertiesInsert
    { _mwpiPayload = pMwpiPayload_
    , _mwpiAccountId = pMwpiAccountId_
    }

-- | Multipart request metadata.
mwpiPayload :: Lens' ManagementWebPropertiesInsert WebProperty
mwpiPayload
  = lens _mwpiPayload (\ s a -> s{_mwpiPayload = a})

-- | Account ID to create the web property for.
mwpiAccountId :: Lens' ManagementWebPropertiesInsert Text
mwpiAccountId
  = lens _mwpiAccountId
      (\ s a -> s{_mwpiAccountId = a})

instance GoogleRequest ManagementWebPropertiesInsert
         where
        type Rs ManagementWebPropertiesInsert = WebProperty
        type Scopes ManagementWebPropertiesInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementWebPropertiesInsert{..}
          = go _mwpiAccountId (Just AltJSON) _mwpiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertiesInsertResource)
                      mempty
