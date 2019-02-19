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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a web property-Google Ads link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.delete@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksDeleteResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksDelete
    , ManagementWebPropertyAdWordsLinksDelete

    -- * Request Lenses
    , mwpawldWebPropertyId
    , mwpawldAccountId
    , mwpawldWebPropertyAdWordsLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.delete@ method which the
-- 'ManagementWebPropertyAdWordsLinksDelete' request conforms to.
type ManagementWebPropertyAdWordsLinksDeleteResource
     =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityAdWordsLinks" :>
                     Capture "webPropertyAdWordsLinkId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a web property-Google Ads link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksDelete' smart constructor.
data ManagementWebPropertyAdWordsLinksDelete =
  ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldWebPropertyId            :: !Text
    , _mwpawldAccountId                :: !Text
    , _mwpawldWebPropertyAdWordsLinkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawldWebPropertyId'
--
-- * 'mwpawldAccountId'
--
-- * 'mwpawldWebPropertyAdWordsLinkId'
managementWebPropertyAdWordsLinksDelete
    :: Text -- ^ 'mwpawldWebPropertyId'
    -> Text -- ^ 'mwpawldAccountId'
    -> Text -- ^ 'mwpawldWebPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksDelete
managementWebPropertyAdWordsLinksDelete pMwpawldWebPropertyId_ pMwpawldAccountId_ pMwpawldWebPropertyAdWordsLinkId_ =
  ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldWebPropertyId = pMwpawldWebPropertyId_
    , _mwpawldAccountId = pMwpawldAccountId_
    , _mwpawldWebPropertyAdWordsLinkId = pMwpawldWebPropertyAdWordsLinkId_
    }

-- | Web property ID to delete the Google Ads link for.
mwpawldWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksDelete Text
mwpawldWebPropertyId
  = lens _mwpawldWebPropertyId
      (\ s a -> s{_mwpawldWebPropertyId = a})

-- | ID of the account which the given web property belongs to.
mwpawldAccountId :: Lens' ManagementWebPropertyAdWordsLinksDelete Text
mwpawldAccountId
  = lens _mwpawldAccountId
      (\ s a -> s{_mwpawldAccountId = a})

-- | Web property Google Ads link ID.
mwpawldWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksDelete Text
mwpawldWebPropertyAdWordsLinkId
  = lens _mwpawldWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawldWebPropertyAdWordsLinkId = a})

instance GoogleRequest
           ManagementWebPropertyAdWordsLinksDelete
         where
        type Rs ManagementWebPropertyAdWordsLinksDelete = ()
        type Scopes ManagementWebPropertyAdWordsLinksDelete =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          ManagementWebPropertyAdWordsLinksDelete'{..}
          = go _mwpawldAccountId _mwpawldWebPropertyId
              _mwpawldWebPropertyAdWordsLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksDeleteResource)
                      mempty
