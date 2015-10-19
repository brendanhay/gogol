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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesPatch@.
module Network.Google.Resource.Analytics.Management.WebProperties.Patch
    (
    -- * REST Resource
      ManagementWebPropertiesPatchResource

    -- * Creating a Request
    , managementWebPropertiesPatch'
    , ManagementWebPropertiesPatch'

    -- * Request Lenses
    , mwppWebPropertyId
    , mwppPayload
    , mwppAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesPatch@ method which the
-- 'ManagementWebPropertiesPatch'' request conforms to.
type ManagementWebPropertiesPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] WebProperty :>
                   Patch '[JSON] WebProperty

-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ 'managementWebPropertiesPatch'' smart constructor.
data ManagementWebPropertiesPatch' = ManagementWebPropertiesPatch'
    { _mwppWebPropertyId :: !Text
    , _mwppPayload       :: !WebProperty
    , _mwppAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwppWebPropertyId'
--
-- * 'mwppPayload'
--
-- * 'mwppAccountId'
managementWebPropertiesPatch'
    :: Text -- ^ 'webPropertyId'
    -> WebProperty -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertiesPatch'
managementWebPropertiesPatch' pMwppWebPropertyId_ pMwppPayload_ pMwppAccountId_ =
    ManagementWebPropertiesPatch'
    { _mwppWebPropertyId = pMwppWebPropertyId_
    , _mwppPayload = pMwppPayload_
    , _mwppAccountId = pMwppAccountId_
    }

-- | Web property ID
mwppWebPropertyId :: Lens' ManagementWebPropertiesPatch' Text
mwppWebPropertyId
  = lens _mwppWebPropertyId
      (\ s a -> s{_mwppWebPropertyId = a})

-- | Multipart request metadata.
mwppPayload :: Lens' ManagementWebPropertiesPatch' WebProperty
mwppPayload
  = lens _mwppPayload (\ s a -> s{_mwppPayload = a})

-- | Account ID to which the web property belongs
mwppAccountId :: Lens' ManagementWebPropertiesPatch' Text
mwppAccountId
  = lens _mwppAccountId
      (\ s a -> s{_mwppAccountId = a})

instance GoogleRequest ManagementWebPropertiesPatch'
         where
        type Rs ManagementWebPropertiesPatch' = WebProperty
        requestClient ManagementWebPropertiesPatch'{..}
          = go _mwppAccountId _mwppWebPropertyId (Just AltJSON)
              _mwppPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementWebPropertiesPatchResource)
                      mempty
