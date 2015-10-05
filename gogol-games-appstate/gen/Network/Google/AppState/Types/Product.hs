{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppState.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppState.Types.Product where

import           Network.Google.AppState.Types.Sum
import           Network.Google.Prelude

-- | This is a JSON template for an app state write result.
--
-- /See:/ 'writeResult' smart constructor.
data WriteResult = WriteResult
    { _wrCurrentStateVersion :: !(Maybe Text)
    , _wrKind                :: !Text
    , _wrStateKey            :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrCurrentStateVersion'
--
-- * 'wrKind'
--
-- * 'wrStateKey'
writeResult
    :: WriteResult
writeResult =
    WriteResult
    { _wrCurrentStateVersion = Nothing
    , _wrKind = "appstate#writeResult"
    , _wrStateKey = Nothing
    }

-- | The version of the data for this key on the server.
wrCurrentStateVersion :: Lens' WriteResult (Maybe Text)
wrCurrentStateVersion
  = lens _wrCurrentStateVersion
      (\ s a -> s{_wrCurrentStateVersion = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string appstate#writeResult.
wrKind :: Lens' WriteResult Text
wrKind = lens _wrKind (\ s a -> s{_wrKind = a})

-- | The written key.
wrStateKey :: Lens' WriteResult (Maybe Int32)
wrStateKey
  = lens _wrStateKey (\ s a -> s{_wrStateKey = a})

instance FromJSON WriteResult where
        parseJSON
          = withObject "WriteResult"
              (\ o ->
                 WriteResult <$>
                   (o .:? "currentStateVersion") <*>
                     (o .:? "kind" .!= "appstate#writeResult")
                     <*> (o .:? "stateKey"))

instance ToJSON WriteResult where
        toJSON WriteResult{..}
          = object
              (catMaybes
                 [("currentStateVersion" .=) <$>
                    _wrCurrentStateVersion,
                  Just ("kind" .= _wrKind),
                  ("stateKey" .=) <$> _wrStateKey])

-- | This is a JSON template to convert a list-response for app state.
--
-- /See:/ 'listResponse' smart constructor.
data ListResponse = ListResponse
    { _lrMaximumKeyCount :: !(Maybe Int32)
    , _lrKind            :: !Text
    , _lrItems           :: !(Maybe [GetResponse])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrMaximumKeyCount'
--
-- * 'lrKind'
--
-- * 'lrItems'
listResponse
    :: ListResponse
listResponse =
    ListResponse
    { _lrMaximumKeyCount = Nothing
    , _lrKind = "appstate#listResponse"
    , _lrItems = Nothing
    }

-- | The maximum number of keys allowed for this user.
lrMaximumKeyCount :: Lens' ListResponse (Maybe Int32)
lrMaximumKeyCount
  = lens _lrMaximumKeyCount
      (\ s a -> s{_lrMaximumKeyCount = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string appstate#listResponse.
lrKind :: Lens' ListResponse Text
lrKind = lens _lrKind (\ s a -> s{_lrKind = a})

-- | The app state data.
lrItems :: Lens' ListResponse [GetResponse]
lrItems
  = lens _lrItems (\ s a -> s{_lrItems = a}) . _Default
      . _Coerce

instance FromJSON ListResponse where
        parseJSON
          = withObject "ListResponse"
              (\ o ->
                 ListResponse <$>
                   (o .:? "maximumKeyCount") <*>
                     (o .:? "kind" .!= "appstate#listResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON ListResponse where
        toJSON ListResponse{..}
          = object
              (catMaybes
                 [("maximumKeyCount" .=) <$> _lrMaximumKeyCount,
                  Just ("kind" .= _lrKind), ("items" .=) <$> _lrItems])

-- | This is a JSON template for an app state resource.
--
-- /See:/ 'getResponse' smart constructor.
data GetResponse = GetResponse
    { _grCurrentStateVersion :: !(Maybe Text)
    , _grKind                :: !Text
    , _grData                :: !(Maybe Text)
    , _grStateKey            :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grCurrentStateVersion'
--
-- * 'grKind'
--
-- * 'grData'
--
-- * 'grStateKey'
getResponse
    :: GetResponse
getResponse =
    GetResponse
    { _grCurrentStateVersion = Nothing
    , _grKind = "appstate#getResponse"
    , _grData = Nothing
    , _grStateKey = Nothing
    }

-- | The current app state version.
grCurrentStateVersion :: Lens' GetResponse (Maybe Text)
grCurrentStateVersion
  = lens _grCurrentStateVersion
      (\ s a -> s{_grCurrentStateVersion = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string appstate#getResponse.
grKind :: Lens' GetResponse Text
grKind = lens _grKind (\ s a -> s{_grKind = a})

-- | The requested data.
grData :: Lens' GetResponse (Maybe Text)
grData = lens _grData (\ s a -> s{_grData = a})

-- | The key for the data.
grStateKey :: Lens' GetResponse (Maybe Int32)
grStateKey
  = lens _grStateKey (\ s a -> s{_grStateKey = a})

instance FromJSON GetResponse where
        parseJSON
          = withObject "GetResponse"
              (\ o ->
                 GetResponse <$>
                   (o .:? "currentStateVersion") <*>
                     (o .:? "kind" .!= "appstate#getResponse")
                     <*> (o .:? "data")
                     <*> (o .:? "stateKey"))

instance ToJSON GetResponse where
        toJSON GetResponse{..}
          = object
              (catMaybes
                 [("currentStateVersion" .=) <$>
                    _grCurrentStateVersion,
                  Just ("kind" .= _grKind), ("data" .=) <$> _grData,
                  ("stateKey" .=) <$> _grStateKey])

-- | This is a JSON template for a requests which update app state
--
-- /See:/ 'updateRequest' smart constructor.
data UpdateRequest = UpdateRequest
    { _urKind :: !Text
    , _urData :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urKind'
--
-- * 'urData'
updateRequest
    :: UpdateRequest
updateRequest =
    UpdateRequest
    { _urKind = "appstate#updateRequest"
    , _urData = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string appstate#updateRequest.
urKind :: Lens' UpdateRequest Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | The new app state data that your application is trying to update with.
urData :: Lens' UpdateRequest (Maybe Text)
urData = lens _urData (\ s a -> s{_urData = a})

instance FromJSON UpdateRequest where
        parseJSON
          = withObject "UpdateRequest"
              (\ o ->
                 UpdateRequest <$>
                   (o .:? "kind" .!= "appstate#updateRequest") <*>
                     (o .:? "data"))

instance ToJSON UpdateRequest where
        toJSON UpdateRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urKind), ("data" .=) <$> _urData])
