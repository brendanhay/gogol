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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a web property-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksDelete@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksDeleteResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksDelete'
    , ManagementWebPropertyAdWordsLinksDelete'

    -- * Request Lenses
    , mwpawldWebPropertyId
    , mwpawldAccountId
    , mwpawldWebPropertyAdWordsLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksDelete@ method which the
-- 'ManagementWebPropertyAdWordsLinksDelete'' request conforms to.
type ManagementWebPropertyAdWordsLinksDeleteResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a web property-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksDelete'' smart constructor.
data ManagementWebPropertyAdWordsLinksDelete' = ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldWebPropertyId            :: !Text
    , _mwpawldAccountId                :: !Text
    , _mwpawldWebPropertyAdWordsLinkId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawldWebPropertyId'
--
-- * 'mwpawldAccountId'
--
-- * 'mwpawldWebPropertyAdWordsLinkId'
managementWebPropertyAdWordsLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksDelete'
managementWebPropertyAdWordsLinksDelete' pMwpawldWebPropertyId_ pMwpawldAccountId_ pMwpawldWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksDelete'
    { _mwpawldWebPropertyId = pMwpawldWebPropertyId_
    , _mwpawldAccountId = pMwpawldAccountId_
    , _mwpawldWebPropertyAdWordsLinkId = pMwpawldWebPropertyAdWordsLinkId_
    }

-- | Web property ID to delete the AdWords link for.
mwpawldWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldWebPropertyId
  = lens _mwpawldWebPropertyId
      (\ s a -> s{_mwpawldWebPropertyId = a})

-- | ID of the account which the given web property belongs to.
mwpawldAccountId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldAccountId
  = lens _mwpawldAccountId
      (\ s a -> s{_mwpawldAccountId = a})

-- | Web property AdWords link ID.
mwpawldWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksDelete' Text
mwpawldWebPropertyAdWordsLinkId
  = lens _mwpawldWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawldWebPropertyAdWordsLinkId = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksDelete' where
        type Rs ManagementWebPropertyAdWordsLinksDelete' = ()
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
