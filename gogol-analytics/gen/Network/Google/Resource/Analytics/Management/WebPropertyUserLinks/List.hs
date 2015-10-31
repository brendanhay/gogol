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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists webProperty-user links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.list@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksListResource

    -- * Creating a Request
    , managementWebPropertyUserLinksList
    , ManagementWebPropertyUserLinksList

    -- * Request Lenses
    , mwpullWebPropertyId
    , mwpullAccountId
    , mwpullStartIndex
    , mwpullMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webpropertyUserLinks.list@ method which the
-- 'ManagementWebPropertyUserLinksList' request conforms to.
type ManagementWebPropertyUserLinksListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityUserLinks" :>
                     QueryParam "start-index" (Textual Int32) :>
                       QueryParam "max-results" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] EntityUserLinks

-- | Lists webProperty-user links for a given web property.
--
-- /See:/ 'managementWebPropertyUserLinksList' smart constructor.
data ManagementWebPropertyUserLinksList = ManagementWebPropertyUserLinksList
    { _mwpullWebPropertyId :: !Text
    , _mwpullAccountId     :: !Text
    , _mwpullStartIndex    :: !(Maybe (Textual Int32))
    , _mwpullMaxResults    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpullWebPropertyId'
--
-- * 'mwpullAccountId'
--
-- * 'mwpullStartIndex'
--
-- * 'mwpullMaxResults'
managementWebPropertyUserLinksList
    :: Text -- ^ 'mwpullWebPropertyId'
    -> Text -- ^ 'mwpullAccountId'
    -> ManagementWebPropertyUserLinksList
managementWebPropertyUserLinksList pMwpullWebPropertyId_ pMwpullAccountId_ =
    ManagementWebPropertyUserLinksList
    { _mwpullWebPropertyId = pMwpullWebPropertyId_
    , _mwpullAccountId = pMwpullAccountId_
    , _mwpullStartIndex = Nothing
    , _mwpullMaxResults = Nothing
    }

-- | Web Property ID for the webProperty-user links to retrieve. Can either
-- be a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mwpullWebPropertyId :: Lens' ManagementWebPropertyUserLinksList Text
mwpullWebPropertyId
  = lens _mwpullWebPropertyId
      (\ s a -> s{_mwpullWebPropertyId = a})

-- | Account ID which the given web property belongs to.
mwpullAccountId :: Lens' ManagementWebPropertyUserLinksList Text
mwpullAccountId
  = lens _mwpullAccountId
      (\ s a -> s{_mwpullAccountId = a})

-- | An index of the first webProperty-user link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwpullStartIndex :: Lens' ManagementWebPropertyUserLinksList (Maybe Int32)
mwpullStartIndex
  = lens _mwpullStartIndex
      (\ s a -> s{_mwpullStartIndex = a})
      . mapping _Coerce

-- | The maximum number of webProperty-user Links to include in this
-- response.
mwpullMaxResults :: Lens' ManagementWebPropertyUserLinksList (Maybe Int32)
mwpullMaxResults
  = lens _mwpullMaxResults
      (\ s a -> s{_mwpullMaxResults = a})
      . mapping _Coerce

instance GoogleRequest
         ManagementWebPropertyUserLinksList where
        type Rs ManagementWebPropertyUserLinksList =
             EntityUserLinks
        type Scopes ManagementWebPropertyUserLinksList =
             '["https://www.googleapis.com/auth/analytics.manage.users",
               "https://www.googleapis.com/auth/analytics.manage.users.readonly"]
        requestClient ManagementWebPropertyUserLinksList{..}
          = go _mwpullAccountId _mwpullWebPropertyId
              _mwpullStartIndex
              _mwpullMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksListResource)
                      mempty
