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
-- Module      : Network.Google.Resource.Games.Events.ListDefinitions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the event definitions in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.events.listDefinitions@.
module Network.Google.Resource.Games.Events.ListDefinitions
    (
    -- * REST Resource
      EventsListDefinitionsResource

    -- * Creating a Request
    , eventsListDefinitions
    , EventsListDefinitions

    -- * Request Lenses
    , eldXgafv
    , eldUploadProtocol
    , eldAccessToken
    , eldUploadType
    , eldLanguage
    , eldPageToken
    , eldMaxResults
    , eldCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.events.listDefinitions@ method which the
-- 'EventsListDefinitions' request conforms to.
type EventsListDefinitionsResource =
     "games" :>
       "v1" :>
         "eventDefinitions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] EventDefinitionListResponse

-- | Returns a list of the event definitions in this application.
--
-- /See:/ 'eventsListDefinitions' smart constructor.
data EventsListDefinitions =
  EventsListDefinitions'
    { _eldXgafv :: !(Maybe Xgafv)
    , _eldUploadProtocol :: !(Maybe Text)
    , _eldAccessToken :: !(Maybe Text)
    , _eldUploadType :: !(Maybe Text)
    , _eldLanguage :: !(Maybe Text)
    , _eldPageToken :: !(Maybe Text)
    , _eldMaxResults :: !(Maybe (Textual Int32))
    , _eldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsListDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldXgafv'
--
-- * 'eldUploadProtocol'
--
-- * 'eldAccessToken'
--
-- * 'eldUploadType'
--
-- * 'eldLanguage'
--
-- * 'eldPageToken'
--
-- * 'eldMaxResults'
--
-- * 'eldCallback'
eventsListDefinitions
    :: EventsListDefinitions
eventsListDefinitions =
  EventsListDefinitions'
    { _eldXgafv = Nothing
    , _eldUploadProtocol = Nothing
    , _eldAccessToken = Nothing
    , _eldUploadType = Nothing
    , _eldLanguage = Nothing
    , _eldPageToken = Nothing
    , _eldMaxResults = Nothing
    , _eldCallback = Nothing
    }


-- | V1 error format.
eldXgafv :: Lens' EventsListDefinitions (Maybe Xgafv)
eldXgafv = lens _eldXgafv (\ s a -> s{_eldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eldUploadProtocol :: Lens' EventsListDefinitions (Maybe Text)
eldUploadProtocol
  = lens _eldUploadProtocol
      (\ s a -> s{_eldUploadProtocol = a})

-- | OAuth access token.
eldAccessToken :: Lens' EventsListDefinitions (Maybe Text)
eldAccessToken
  = lens _eldAccessToken
      (\ s a -> s{_eldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eldUploadType :: Lens' EventsListDefinitions (Maybe Text)
eldUploadType
  = lens _eldUploadType
      (\ s a -> s{_eldUploadType = a})

-- | The preferred language to use for strings returned by this method.
eldLanguage :: Lens' EventsListDefinitions (Maybe Text)
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | The token returned by the previous request.
eldPageToken :: Lens' EventsListDefinitions (Maybe Text)
eldPageToken
  = lens _eldPageToken (\ s a -> s{_eldPageToken = a})

-- | The maximum number of event definitions to return in the response, used
-- for paging. For any response, the actual number of event definitions to
-- return may be less than the specified \`maxResults\`.
eldMaxResults :: Lens' EventsListDefinitions (Maybe Int32)
eldMaxResults
  = lens _eldMaxResults
      (\ s a -> s{_eldMaxResults = a})
      . mapping _Coerce

-- | JSONP
eldCallback :: Lens' EventsListDefinitions (Maybe Text)
eldCallback
  = lens _eldCallback (\ s a -> s{_eldCallback = a})

instance GoogleRequest EventsListDefinitions where
        type Rs EventsListDefinitions =
             EventDefinitionListResponse
        type Scopes EventsListDefinitions =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsListDefinitions'{..}
          = go _eldXgafv _eldUploadProtocol _eldAccessToken
              _eldUploadType
              _eldLanguage
              _eldPageToken
              _eldMaxResults
              _eldCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsListDefinitionsResource)
                      mempty
