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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a web property-AdWords link to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.get@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksGetResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksGet'
    , ManagementWebPropertyAdWordsLinksGet'

    -- * Request Lenses
    , mwpawlgWebPropertyId
    , mwpawlgAccountId
    , mwpawlgWebPropertyAdWordsLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.get@ method which the
-- 'ManagementWebPropertyAdWordsLinksGet'' request conforms to.
type ManagementWebPropertyAdWordsLinksGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] EntityAdWordsLink

-- | Returns a web property-AdWords link to which the user has access.
--
-- /See:/ 'managementWebPropertyAdWordsLinksGet'' smart constructor.
data ManagementWebPropertyAdWordsLinksGet' = ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgWebPropertyId            :: !Text
    , _mwpawlgAccountId                :: !Text
    , _mwpawlgWebPropertyAdWordsLinkId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlgWebPropertyId'
--
-- * 'mwpawlgAccountId'
--
-- * 'mwpawlgWebPropertyAdWordsLinkId'
managementWebPropertyAdWordsLinksGet'
    :: Text -- ^ 'mwpawlgWebPropertyId'
    -> Text -- ^ 'mwpawlgAccountId'
    -> Text -- ^ 'mwpawlgWebPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksGet'
managementWebPropertyAdWordsLinksGet' pMwpawlgWebPropertyId_ pMwpawlgAccountId_ pMwpawlgWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgWebPropertyId = pMwpawlgWebPropertyId_
    , _mwpawlgAccountId = pMwpawlgAccountId_
    , _mwpawlgWebPropertyAdWordsLinkId = pMwpawlgWebPropertyAdWordsLinkId_
    }

-- | Web property ID to retrieve the AdWords link for.
mwpawlgWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyId
  = lens _mwpawlgWebPropertyId
      (\ s a -> s{_mwpawlgWebPropertyId = a})

-- | ID of the account which the given web property belongs to.
mwpawlgAccountId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgAccountId
  = lens _mwpawlgAccountId
      (\ s a -> s{_mwpawlgAccountId = a})

-- | Web property-AdWords link ID.
mwpawlgWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyAdWordsLinkId
  = lens _mwpawlgWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlgWebPropertyAdWordsLinkId = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksGet' where
        type Rs ManagementWebPropertyAdWordsLinksGet' =
             EntityAdWordsLink
        requestClient
          ManagementWebPropertyAdWordsLinksGet'{..}
          = go _mwpawlgAccountId _mwpawlgWebPropertyId
              _mwpawlgWebPropertyAdWordsLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksGetResource)
                      mempty
