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
-- Module      : Network.Google.Resource.Games.Events.ListByPlayer
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.events.listByPlayer@.
module Network.Google.Resource.Games.Events.ListByPlayer
    (
    -- * REST Resource
      EventsListByPlayerResource

    -- * Creating a Request
    , eventsListByPlayer
    , EventsListByPlayer

    -- * Request Lenses
    , elbpXgafv
    , elbpUploadProtocol
    , elbpAccessToken
    , elbpUploadType
    , elbpLanguage
    , elbpPageToken
    , elbpMaxResults
    , elbpCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.events.listByPlayer@ method which the
-- 'EventsListByPlayer' request conforms to.
type EventsListByPlayerResource =
     "games" :>
       "v1" :>
         "events" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PlayerEventListResponse

-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ 'eventsListByPlayer' smart constructor.
data EventsListByPlayer =
  EventsListByPlayer'
    { _elbpXgafv :: !(Maybe Xgafv)
    , _elbpUploadProtocol :: !(Maybe Text)
    , _elbpAccessToken :: !(Maybe Text)
    , _elbpUploadType :: !(Maybe Text)
    , _elbpLanguage :: !(Maybe Text)
    , _elbpPageToken :: !(Maybe Text)
    , _elbpMaxResults :: !(Maybe (Textual Int32))
    , _elbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsListByPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elbpXgafv'
--
-- * 'elbpUploadProtocol'
--
-- * 'elbpAccessToken'
--
-- * 'elbpUploadType'
--
-- * 'elbpLanguage'
--
-- * 'elbpPageToken'
--
-- * 'elbpMaxResults'
--
-- * 'elbpCallback'
eventsListByPlayer
    :: EventsListByPlayer
eventsListByPlayer =
  EventsListByPlayer'
    { _elbpXgafv = Nothing
    , _elbpUploadProtocol = Nothing
    , _elbpAccessToken = Nothing
    , _elbpUploadType = Nothing
    , _elbpLanguage = Nothing
    , _elbpPageToken = Nothing
    , _elbpMaxResults = Nothing
    , _elbpCallback = Nothing
    }


-- | V1 error format.
elbpXgafv :: Lens' EventsListByPlayer (Maybe Xgafv)
elbpXgafv
  = lens _elbpXgafv (\ s a -> s{_elbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elbpUploadProtocol :: Lens' EventsListByPlayer (Maybe Text)
elbpUploadProtocol
  = lens _elbpUploadProtocol
      (\ s a -> s{_elbpUploadProtocol = a})

-- | OAuth access token.
elbpAccessToken :: Lens' EventsListByPlayer (Maybe Text)
elbpAccessToken
  = lens _elbpAccessToken
      (\ s a -> s{_elbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elbpUploadType :: Lens' EventsListByPlayer (Maybe Text)
elbpUploadType
  = lens _elbpUploadType
      (\ s a -> s{_elbpUploadType = a})

-- | The preferred language to use for strings returned by this method.
elbpLanguage :: Lens' EventsListByPlayer (Maybe Text)
elbpLanguage
  = lens _elbpLanguage (\ s a -> s{_elbpLanguage = a})

-- | The token returned by the previous request.
elbpPageToken :: Lens' EventsListByPlayer (Maybe Text)
elbpPageToken
  = lens _elbpPageToken
      (\ s a -> s{_elbpPageToken = a})

-- | The maximum number of events to return in the response, used for paging.
-- For any response, the actual number of events to return may be less than
-- the specified maxResults.
elbpMaxResults :: Lens' EventsListByPlayer (Maybe Int32)
elbpMaxResults
  = lens _elbpMaxResults
      (\ s a -> s{_elbpMaxResults = a})
      . mapping _Coerce

-- | JSONP
elbpCallback :: Lens' EventsListByPlayer (Maybe Text)
elbpCallback
  = lens _elbpCallback (\ s a -> s{_elbpCallback = a})

instance GoogleRequest EventsListByPlayer where
        type Rs EventsListByPlayer = PlayerEventListResponse
        type Scopes EventsListByPlayer =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsListByPlayer'{..}
          = go _elbpXgafv _elbpUploadProtocol _elbpAccessToken
              _elbpUploadType
              _elbpLanguage
              _elbpPageToken
              _elbpMaxResults
              _elbpCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsListByPlayerResource)
                      mempty
