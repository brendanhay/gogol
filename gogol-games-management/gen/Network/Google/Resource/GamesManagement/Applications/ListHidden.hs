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
-- Module      : Network.Google.Resource.GamesManagement.Applications.ListHidden
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.applications.listHidden@.
module Network.Google.Resource.GamesManagement.Applications.ListHidden
    (
    -- * REST Resource
      ApplicationsListHiddenResource

    -- * Creating a Request
    , applicationsListHidden'
    , ApplicationsListHidden'

    -- * Request Lenses
    , alhApplicationId
    , alhPageToken
    , alhMaxResults
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.applications.listHidden@ method which the
-- 'ApplicationsListHidden'' request conforms to.
type ApplicationsListHiddenResource =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] HiddenPlayerList

-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ 'applicationsListHidden'' smart constructor.
data ApplicationsListHidden' = ApplicationsListHidden'
    { _alhApplicationId :: !Text
    , _alhPageToken     :: !(Maybe Text)
    , _alhMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsListHidden'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alhApplicationId'
--
-- * 'alhPageToken'
--
-- * 'alhMaxResults'
applicationsListHidden'
    :: Text -- ^ 'alhApplicationId'
    -> ApplicationsListHidden'
applicationsListHidden' pAlhApplicationId_ =
    ApplicationsListHidden'
    { _alhApplicationId = pAlhApplicationId_
    , _alhPageToken = Nothing
    , _alhMaxResults = Nothing
    }

-- | The application ID from the Google Play developer console.
alhApplicationId :: Lens' ApplicationsListHidden' Text
alhApplicationId
  = lens _alhApplicationId
      (\ s a -> s{_alhApplicationId = a})

-- | The token returned by the previous request.
alhPageToken :: Lens' ApplicationsListHidden' (Maybe Text)
alhPageToken
  = lens _alhPageToken (\ s a -> s{_alhPageToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified maxResults.
alhMaxResults :: Lens' ApplicationsListHidden' (Maybe Int32)
alhMaxResults
  = lens _alhMaxResults
      (\ s a -> s{_alhMaxResults = a})

instance GoogleRequest ApplicationsListHidden' where
        type Rs ApplicationsListHidden' = HiddenPlayerList
        requestClient ApplicationsListHidden'{..}
          = go _alhApplicationId _alhPageToken _alhMaxResults
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsListHiddenResource)
                      mempty
