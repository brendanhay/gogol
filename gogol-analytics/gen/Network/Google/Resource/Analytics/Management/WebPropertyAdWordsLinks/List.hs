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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists webProperty-Google Ads links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.list@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksListResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksList
    , ManagementWebPropertyAdWordsLinksList

    -- * Request Lenses
    , mwpawllWebPropertyId
    , mwpawllAccountId
    , mwpawllStartIndex
    , mwpawllMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.list@ method which the
-- 'ManagementWebPropertyAdWordsLinksList' request conforms to.
type ManagementWebPropertyAdWordsLinksListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityAdWordsLinks" :>
                     QueryParam "start-index" (Textual Int32) :>
                       QueryParam "max-results" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] EntityAdWordsLinks

-- | Lists webProperty-Google Ads links for a given web property.
--
-- /See:/ 'managementWebPropertyAdWordsLinksList' smart constructor.
data ManagementWebPropertyAdWordsLinksList =
  ManagementWebPropertyAdWordsLinksList'
    { _mwpawllWebPropertyId :: !Text
    , _mwpawllAccountId     :: !Text
    , _mwpawllStartIndex    :: !(Maybe (Textual Int32))
    , _mwpawllMaxResults    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementWebPropertyAdWordsLinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawllWebPropertyId'
--
-- * 'mwpawllAccountId'
--
-- * 'mwpawllStartIndex'
--
-- * 'mwpawllMaxResults'
managementWebPropertyAdWordsLinksList
    :: Text -- ^ 'mwpawllWebPropertyId'
    -> Text -- ^ 'mwpawllAccountId'
    -> ManagementWebPropertyAdWordsLinksList
managementWebPropertyAdWordsLinksList pMwpawllWebPropertyId_ pMwpawllAccountId_ =
  ManagementWebPropertyAdWordsLinksList'
    { _mwpawllWebPropertyId = pMwpawllWebPropertyId_
    , _mwpawllAccountId = pMwpawllAccountId_
    , _mwpawllStartIndex = Nothing
    , _mwpawllMaxResults = Nothing
    }


-- | Web property ID to retrieve the Google Ads links for.
mwpawllWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksList Text
mwpawllWebPropertyId
  = lens _mwpawllWebPropertyId
      (\ s a -> s{_mwpawllWebPropertyId = a})

-- | ID of the account which the given web property belongs to.
mwpawllAccountId :: Lens' ManagementWebPropertyAdWordsLinksList Text
mwpawllAccountId
  = lens _mwpawllAccountId
      (\ s a -> s{_mwpawllAccountId = a})

-- | An index of the first webProperty-Google Ads link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwpawllStartIndex :: Lens' ManagementWebPropertyAdWordsLinksList (Maybe Int32)
mwpawllStartIndex
  = lens _mwpawllStartIndex
      (\ s a -> s{_mwpawllStartIndex = a})
      . mapping _Coerce

-- | The maximum number of webProperty-Google Ads links to include in this
-- response.
mwpawllMaxResults :: Lens' ManagementWebPropertyAdWordsLinksList (Maybe Int32)
mwpawllMaxResults
  = lens _mwpawllMaxResults
      (\ s a -> s{_mwpawllMaxResults = a})
      . mapping _Coerce

instance GoogleRequest
           ManagementWebPropertyAdWordsLinksList
         where
        type Rs ManagementWebPropertyAdWordsLinksList =
             EntityAdWordsLinks
        type Scopes ManagementWebPropertyAdWordsLinksList =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient
          ManagementWebPropertyAdWordsLinksList'{..}
          = go _mwpawllAccountId _mwpawllWebPropertyId
              _mwpawllStartIndex
              _mwpawllMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksListResource)
                      mempty
