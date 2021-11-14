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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.applications.listHidden@.
module Network.Google.Resource.GamesManagement.Applications.ListHidden
    (
    -- * REST Resource
      ApplicationsListHiddenResource

    -- * Creating a Request
    , applicationsListHidden
    , ApplicationsListHidden

    -- * Request Lenses
    , alhXgafv
    , alhUploadProtocol
    , alhAccessToken
    , alhUploadType
    , alhApplicationId
    , alhPageToken
    , alhMaxResults
    , alhCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.applications.listHidden@ method which the
-- 'ApplicationsListHidden' request conforms to.
type ApplicationsListHiddenResource =
     "games" :>
       "v1management" :>
         "applications" :>
           Capture "applicationId" Text :>
             "players" :>
               "hidden" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] HiddenPlayerList

-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ 'applicationsListHidden' smart constructor.
data ApplicationsListHidden =
  ApplicationsListHidden'
    { _alhXgafv :: !(Maybe Xgafv)
    , _alhUploadProtocol :: !(Maybe Text)
    , _alhAccessToken :: !(Maybe Text)
    , _alhUploadType :: !(Maybe Text)
    , _alhApplicationId :: !Text
    , _alhPageToken :: !(Maybe Text)
    , _alhMaxResults :: !(Maybe (Textual Int32))
    , _alhCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsListHidden' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alhXgafv'
--
-- * 'alhUploadProtocol'
--
-- * 'alhAccessToken'
--
-- * 'alhUploadType'
--
-- * 'alhApplicationId'
--
-- * 'alhPageToken'
--
-- * 'alhMaxResults'
--
-- * 'alhCallback'
applicationsListHidden
    :: Text -- ^ 'alhApplicationId'
    -> ApplicationsListHidden
applicationsListHidden pAlhApplicationId_ =
  ApplicationsListHidden'
    { _alhXgafv = Nothing
    , _alhUploadProtocol = Nothing
    , _alhAccessToken = Nothing
    , _alhUploadType = Nothing
    , _alhApplicationId = pAlhApplicationId_
    , _alhPageToken = Nothing
    , _alhMaxResults = Nothing
    , _alhCallback = Nothing
    }


-- | V1 error format.
alhXgafv :: Lens' ApplicationsListHidden (Maybe Xgafv)
alhXgafv = lens _alhXgafv (\ s a -> s{_alhXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alhUploadProtocol :: Lens' ApplicationsListHidden (Maybe Text)
alhUploadProtocol
  = lens _alhUploadProtocol
      (\ s a -> s{_alhUploadProtocol = a})

-- | OAuth access token.
alhAccessToken :: Lens' ApplicationsListHidden (Maybe Text)
alhAccessToken
  = lens _alhAccessToken
      (\ s a -> s{_alhAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alhUploadType :: Lens' ApplicationsListHidden (Maybe Text)
alhUploadType
  = lens _alhUploadType
      (\ s a -> s{_alhUploadType = a})

-- | The application ID from the Google Play developer console.
alhApplicationId :: Lens' ApplicationsListHidden Text
alhApplicationId
  = lens _alhApplicationId
      (\ s a -> s{_alhApplicationId = a})

-- | The token returned by the previous request.
alhPageToken :: Lens' ApplicationsListHidden (Maybe Text)
alhPageToken
  = lens _alhPageToken (\ s a -> s{_alhPageToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified \`maxResults\`.
alhMaxResults :: Lens' ApplicationsListHidden (Maybe Int32)
alhMaxResults
  = lens _alhMaxResults
      (\ s a -> s{_alhMaxResults = a})
      . mapping _Coerce

-- | JSONP
alhCallback :: Lens' ApplicationsListHidden (Maybe Text)
alhCallback
  = lens _alhCallback (\ s a -> s{_alhCallback = a})

instance GoogleRequest ApplicationsListHidden where
        type Rs ApplicationsListHidden = HiddenPlayerList
        type Scopes ApplicationsListHidden =
             '["https://www.googleapis.com/auth/games"]
        requestClient ApplicationsListHidden'{..}
          = go _alhApplicationId _alhXgafv _alhUploadProtocol
              _alhAccessToken
              _alhUploadType
              _alhPageToken
              _alhMaxResults
              _alhCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsListHiddenResource)
                      mempty
