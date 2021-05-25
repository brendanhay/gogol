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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing webProperty-Google Ads link. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.patch@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksPatchResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksPatch
    , ManagementWebPropertyAdWordsLinksPatch

    -- * Request Lenses
    , mwpawlpWebPropertyId
    , mwpawlpPayload
    , mwpawlpAccountId
    , mwpawlpWebPropertyAdWordsLinkId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.patch@ method which the
-- 'ManagementWebPropertyAdWordsLinksPatch' request conforms to.
type ManagementWebPropertyAdWordsLinksPatchResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityAdWordsLinks" :>
                     Capture "webPropertyAdWordsLinkId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EntityAdWordsLink :>
                           Patch '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-Google Ads link. This method supports
-- patch semantics.
--
-- /See:/ 'managementWebPropertyAdWordsLinksPatch' smart constructor.
data ManagementWebPropertyAdWordsLinksPatch =
  ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpWebPropertyId :: !Text
    , _mwpawlpPayload :: !EntityAdWordsLink
    , _mwpawlpAccountId :: !Text
    , _mwpawlpWebPropertyAdWordsLinkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementWebPropertyAdWordsLinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlpWebPropertyId'
--
-- * 'mwpawlpPayload'
--
-- * 'mwpawlpAccountId'
--
-- * 'mwpawlpWebPropertyAdWordsLinkId'
managementWebPropertyAdWordsLinksPatch
    :: Text -- ^ 'mwpawlpWebPropertyId'
    -> EntityAdWordsLink -- ^ 'mwpawlpPayload'
    -> Text -- ^ 'mwpawlpAccountId'
    -> Text -- ^ 'mwpawlpWebPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksPatch
managementWebPropertyAdWordsLinksPatch pMwpawlpWebPropertyId_ pMwpawlpPayload_ pMwpawlpAccountId_ pMwpawlpWebPropertyAdWordsLinkId_ =
  ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpWebPropertyId = pMwpawlpWebPropertyId_
    , _mwpawlpPayload = pMwpawlpPayload_
    , _mwpawlpAccountId = pMwpawlpAccountId_
    , _mwpawlpWebPropertyAdWordsLinkId = pMwpawlpWebPropertyAdWordsLinkId_
    }


-- | Web property ID to retrieve the Google Ads link for.
mwpawlpWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksPatch Text
mwpawlpWebPropertyId
  = lens _mwpawlpWebPropertyId
      (\ s a -> s{_mwpawlpWebPropertyId = a})

-- | Multipart request metadata.
mwpawlpPayload :: Lens' ManagementWebPropertyAdWordsLinksPatch EntityAdWordsLink
mwpawlpPayload
  = lens _mwpawlpPayload
      (\ s a -> s{_mwpawlpPayload = a})

-- | ID of the account which the given web property belongs to.
mwpawlpAccountId :: Lens' ManagementWebPropertyAdWordsLinksPatch Text
mwpawlpAccountId
  = lens _mwpawlpAccountId
      (\ s a -> s{_mwpawlpAccountId = a})

-- | Web property-Google Ads link ID.
mwpawlpWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksPatch Text
mwpawlpWebPropertyAdWordsLinkId
  = lens _mwpawlpWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlpWebPropertyAdWordsLinkId = a})

instance GoogleRequest
           ManagementWebPropertyAdWordsLinksPatch
         where
        type Rs ManagementWebPropertyAdWordsLinksPatch =
             EntityAdWordsLink
        type Scopes ManagementWebPropertyAdWordsLinksPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          ManagementWebPropertyAdWordsLinksPatch'{..}
          = go _mwpawlpAccountId _mwpawlpWebPropertyId
              _mwpawlpWebPropertyAdWordsLinkId
              (Just AltJSON)
              _mwpawlpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksPatchResource)
                      mempty
