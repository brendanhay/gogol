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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksDelete@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete
    (
    -- * REST Resource
      ManagementAccountUserLinksDeleteResource

    -- * Creating a Request
    , managementAccountUserLinksDelete'
    , ManagementAccountUserLinksDelete'

    -- * Request Lenses
    , mauldAccountId
    , mauldLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksDelete@ method which the
-- 'ManagementAccountUserLinksDelete'' request conforms to.
type ManagementAccountUserLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "entityUserLinks" :>
             Capture "linkId" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given account.
--
-- /See:/ 'managementAccountUserLinksDelete'' smart constructor.
data ManagementAccountUserLinksDelete' = ManagementAccountUserLinksDelete'
    { _mauldAccountId :: !Text
    , _mauldLinkId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauldAccountId'
--
-- * 'mauldLinkId'
managementAccountUserLinksDelete'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementAccountUserLinksDelete'
managementAccountUserLinksDelete' pMauldAccountId_ pMauldLinkId_ =
    ManagementAccountUserLinksDelete'
    { _mauldAccountId = pMauldAccountId_
    , _mauldLinkId = pMauldLinkId_
    }

-- | Account ID to delete the user link for.
mauldAccountId :: Lens' ManagementAccountUserLinksDelete' Text
mauldAccountId
  = lens _mauldAccountId
      (\ s a -> s{_mauldAccountId = a})

-- | Link ID to delete the user link for.
mauldLinkId :: Lens' ManagementAccountUserLinksDelete' Text
mauldLinkId
  = lens _mauldLinkId (\ s a -> s{_mauldLinkId = a})

instance GoogleRequest
         ManagementAccountUserLinksDelete' where
        type Rs ManagementAccountUserLinksDelete' = ()
        requestClient ManagementAccountUserLinksDelete'{..}
          = go _mauldAccountId _mauldLinkId (Just AltJSON)
              analytics
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementAccountUserLinksDeleteResource)
                      mempty
