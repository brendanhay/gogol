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
-- Module      : Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all saved ad styles in the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.savedadstyles.list@.
module Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
    (
    -- * REST Resource
      AccountsSavedadstylesListResource

    -- * Creating a Request
    , accountsSavedadstylesList
    , AccountsSavedadstylesList

    -- * Request Lenses
    , aslAccountId
    , aslPageToken
    , aslMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.savedadstyles.list@ method which the
-- 'AccountsSavedadstylesList' request conforms to.
type AccountsSavedadstylesListResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "savedadstyles" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (JSONText Int32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyles

-- | List all saved ad styles in the specified account.
--
-- /See:/ 'accountsSavedadstylesList' smart constructor.
data AccountsSavedadstylesList = AccountsSavedadstylesList
    { _aslAccountId  :: !Text
    , _aslPageToken  :: !(Maybe Text)
    , _aslMaxResults :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsSavedadstylesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslAccountId'
--
-- * 'aslPageToken'
--
-- * 'aslMaxResults'
accountsSavedadstylesList
    :: Text -- ^ 'aslAccountId'
    -> AccountsSavedadstylesList
accountsSavedadstylesList pAslAccountId_ =
    AccountsSavedadstylesList
    { _aslAccountId = pAslAccountId_
    , _aslPageToken = Nothing
    , _aslMaxResults = Nothing
    }

-- | Account for which to list saved ad styles.
aslAccountId :: Lens' AccountsSavedadstylesList Text
aslAccountId
  = lens _aslAccountId (\ s a -> s{_aslAccountId = a})

-- | A continuation token, used to page through saved ad styles. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aslPageToken :: Lens' AccountsSavedadstylesList (Maybe Text)
aslPageToken
  = lens _aslPageToken (\ s a -> s{_aslPageToken = a})

-- | The maximum number of saved ad styles to include in the response, used
-- for paging.
aslMaxResults :: Lens' AccountsSavedadstylesList (Maybe Int32)
aslMaxResults
  = lens _aslMaxResults
      (\ s a -> s{_aslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsSavedadstylesList
         where
        type Rs AccountsSavedadstylesList = SavedAdStyles
        requestClient AccountsSavedadstylesList{..}
          = go _aslAccountId _aslPageToken _aslMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsSavedadstylesListResource)
                      mempty
