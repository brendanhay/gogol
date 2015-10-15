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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesUpdate@.
module Network.Google.Resource.Analytics.Management.WebProperties.Update
    (
    -- * REST Resource
      ManagementWebPropertiesUpdateResource

    -- * Creating a Request
    , managementWebPropertiesUpdate'
    , ManagementWebPropertiesUpdate'

    -- * Request Lenses
    , mwpuWebPropertyId
    , mwpuPayload
    , mwpuAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesUpdate@ method which the
-- 'ManagementWebPropertiesUpdate'' request conforms to.
type ManagementWebPropertiesUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] WebProperty :>
                   Put '[JSON] WebProperty

-- | Updates an existing web property.
--
-- /See:/ 'managementWebPropertiesUpdate'' smart constructor.
data ManagementWebPropertiesUpdate' = ManagementWebPropertiesUpdate'
    { _mwpuWebPropertyId :: !Text
    , _mwpuPayload       :: !WebProperty
    , _mwpuAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuWebPropertyId'
--
-- * 'mwpuPayload'
--
-- * 'mwpuAccountId'
managementWebPropertiesUpdate'
    :: Text -- ^ 'webPropertyId'
    -> WebProperty -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertiesUpdate'
managementWebPropertiesUpdate' pMwpuWebPropertyId_ pMwpuPayload_ pMwpuAccountId_ =
    ManagementWebPropertiesUpdate'
    { _mwpuWebPropertyId = pMwpuWebPropertyId_
    , _mwpuPayload = pMwpuPayload_
    , _mwpuAccountId = pMwpuAccountId_
    }

-- | Web property ID
mwpuWebPropertyId :: Lens' ManagementWebPropertiesUpdate' Text
mwpuWebPropertyId
  = lens _mwpuWebPropertyId
      (\ s a -> s{_mwpuWebPropertyId = a})

-- | Multipart request metadata.
mwpuPayload :: Lens' ManagementWebPropertiesUpdate' WebProperty
mwpuPayload
  = lens _mwpuPayload (\ s a -> s{_mwpuPayload = a})

-- | Account ID to which the web property belongs
mwpuAccountId :: Lens' ManagementWebPropertiesUpdate' Text
mwpuAccountId
  = lens _mwpuAccountId
      (\ s a -> s{_mwpuAccountId = a})

instance GoogleRequest ManagementWebPropertiesUpdate'
         where
        type Rs ManagementWebPropertiesUpdate' = WebProperty
        requestClient ManagementWebPropertiesUpdate'{..}
          = go _mwpuAccountId _mwpuWebPropertyId (Just AltJSON)
              _mwpuPayload
              analytics
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertiesUpdateResource)
                      mempty
