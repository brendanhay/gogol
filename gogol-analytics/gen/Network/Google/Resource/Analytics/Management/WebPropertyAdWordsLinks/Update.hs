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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksUpdateResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksUpdate'
    , ManagementWebPropertyAdWordsLinksUpdate'

    -- * Request Lenses
    , mwpawluWebPropertyId
    , mwpawluPayload
    , mwpawluAccountId
    , mwpawluWebPropertyAdWordsLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@ method which the
-- 'ManagementWebPropertyAdWordsLinksUpdate'' request conforms to.
type ManagementWebPropertyAdWordsLinksUpdateResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EntityAdWordsLink :>
                       Put '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksUpdate'' smart constructor.
data ManagementWebPropertyAdWordsLinksUpdate' = ManagementWebPropertyAdWordsLinksUpdate'
    { _mwpawluWebPropertyId            :: !Text
    , _mwpawluPayload                  :: !EntityAdWordsLink
    , _mwpawluAccountId                :: !Text
    , _mwpawluWebPropertyAdWordsLinkId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawluWebPropertyId'
--
-- * 'mwpawluPayload'
--
-- * 'mwpawluAccountId'
--
-- * 'mwpawluWebPropertyAdWordsLinkId'
managementWebPropertyAdWordsLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> EntityAdWordsLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksUpdate'
managementWebPropertyAdWordsLinksUpdate' pMwpawluWebPropertyId_ pMwpawluPayload_ pMwpawluAccountId_ pMwpawluWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksUpdate'
    { _mwpawluWebPropertyId = pMwpawluWebPropertyId_
    , _mwpawluPayload = pMwpawluPayload_
    , _mwpawluAccountId = pMwpawluAccountId_
    , _mwpawluWebPropertyAdWordsLinkId = pMwpawluWebPropertyAdWordsLinkId_
    }

-- | Web property ID to retrieve the AdWords link for.
mwpawluWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyId
  = lens _mwpawluWebPropertyId
      (\ s a -> s{_mwpawluWebPropertyId = a})

-- | Multipart request metadata.
mwpawluPayload :: Lens' ManagementWebPropertyAdWordsLinksUpdate' EntityAdWordsLink
mwpawluPayload
  = lens _mwpawluPayload
      (\ s a -> s{_mwpawluPayload = a})

-- | ID of the account which the given web property belongs to.
mwpawluAccountId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluAccountId
  = lens _mwpawluAccountId
      (\ s a -> s{_mwpawluAccountId = a})

-- | Web property-AdWords link ID.
mwpawluWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyAdWordsLinkId
  = lens _mwpawluWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawluWebPropertyAdWordsLinkId = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksUpdate' where
        type Rs ManagementWebPropertyAdWordsLinksUpdate' =
             EntityAdWordsLink
        requestClient
          ManagementWebPropertyAdWordsLinksUpdate'{..}
          = go _mwpawluAccountId _mwpawluWebPropertyId
              _mwpawluWebPropertyAdWordsLinkId
              (Just AltJSON)
              _mwpawluPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksUpdateResource)
                      mempty
