{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Volumes.UserUploaded.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of books uploaded by the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesUserUploadedList@.
module Network.Google.Resource.Books.Volumes.UserUploaded.List
    (
    -- * REST Resource
      VolumesUserUploadedListResource

    -- * Creating a Request
    , volumesUserUploadedList'
    , VolumesUserUploadedList'

    -- * Request Lenses
    , vuulProcessingState
    , vuulQuotaUser
    , vuulPrettyPrint
    , vuulUserIP
    , vuulLocale
    , vuulKey
    , vuulVolumeId
    , vuulSource
    , vuulOAuthToken
    , vuulStartIndex
    , vuulMaxResults
    , vuulFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesUserUploadedList@ which the
-- 'VolumesUserUploadedList'' request conforms to.
type VolumesUserUploadedListResource =
     "volumes" :>
       "useruploaded" :>
         QueryParam "locale" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParams "processingState"
               BooksVolumesUserUploadedListProcessingState
               :>
               QueryParam "source" Text :>
                 QueryParam "startIndex" Word32 :>
                   QueryParams "volumeId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of books uploaded by the current user.
--
-- /See:/ 'volumesUserUploadedList'' smart constructor.
data VolumesUserUploadedList' = VolumesUserUploadedList'
    { _vuulProcessingState :: !(Maybe BooksVolumesUserUploadedListProcessingState)
    , _vuulQuotaUser       :: !(Maybe Text)
    , _vuulPrettyPrint     :: !Bool
    , _vuulUserIP          :: !(Maybe Text)
    , _vuulLocale          :: !(Maybe Text)
    , _vuulKey             :: !(Maybe Key)
    , _vuulVolumeId        :: !(Maybe Text)
    , _vuulSource          :: !(Maybe Text)
    , _vuulOAuthToken      :: !(Maybe OAuthToken)
    , _vuulStartIndex      :: !(Maybe Word32)
    , _vuulMaxResults      :: !(Maybe Word32)
    , _vuulFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesUserUploadedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuulProcessingState'
--
-- * 'vuulQuotaUser'
--
-- * 'vuulPrettyPrint'
--
-- * 'vuulUserIP'
--
-- * 'vuulLocale'
--
-- * 'vuulKey'
--
-- * 'vuulVolumeId'
--
-- * 'vuulSource'
--
-- * 'vuulOAuthToken'
--
-- * 'vuulStartIndex'
--
-- * 'vuulMaxResults'
--
-- * 'vuulFields'
volumesUserUploadedList'
    :: VolumesUserUploadedList'
volumesUserUploadedList' =
    VolumesUserUploadedList'
    { _vuulProcessingState = Nothing
    , _vuulQuotaUser = Nothing
    , _vuulPrettyPrint = True
    , _vuulUserIP = Nothing
    , _vuulLocale = Nothing
    , _vuulKey = Nothing
    , _vuulVolumeId = Nothing
    , _vuulSource = Nothing
    , _vuulOAuthToken = Nothing
    , _vuulStartIndex = Nothing
    , _vuulMaxResults = Nothing
    , _vuulFields = Nothing
    }

-- | The processing state of the user uploaded volumes to be returned.
vuulProcessingState :: Lens' VolumesUserUploadedList' (Maybe BooksVolumesUserUploadedListProcessingState)
vuulProcessingState
  = lens _vuulProcessingState
      (\ s a -> s{_vuulProcessingState = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuulQuotaUser :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulQuotaUser
  = lens _vuulQuotaUser
      (\ s a -> s{_vuulQuotaUser = a})

-- | Returns response with indentations and line breaks.
vuulPrettyPrint :: Lens' VolumesUserUploadedList' Bool
vuulPrettyPrint
  = lens _vuulPrettyPrint
      (\ s a -> s{_vuulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuulUserIP :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulUserIP
  = lens _vuulUserIP (\ s a -> s{_vuulUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vuulLocale :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulLocale
  = lens _vuulLocale (\ s a -> s{_vuulLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuulKey :: Lens' VolumesUserUploadedList' (Maybe Key)
vuulKey = lens _vuulKey (\ s a -> s{_vuulKey = a})

-- | The ids of the volumes to be returned. If not specified all that match
-- the processingState are returned.
vuulVolumeId :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulVolumeId
  = lens _vuulVolumeId (\ s a -> s{_vuulVolumeId = a})

-- | String to identify the originator of this request.
vuulSource :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulSource
  = lens _vuulSource (\ s a -> s{_vuulSource = a})

-- | OAuth 2.0 token for the current user.
vuulOAuthToken :: Lens' VolumesUserUploadedList' (Maybe OAuthToken)
vuulOAuthToken
  = lens _vuulOAuthToken
      (\ s a -> s{_vuulOAuthToken = a})

-- | Index of the first result to return (starts at 0)
vuulStartIndex :: Lens' VolumesUserUploadedList' (Maybe Word32)
vuulStartIndex
  = lens _vuulStartIndex
      (\ s a -> s{_vuulStartIndex = a})

-- | Maximum number of results to return.
vuulMaxResults :: Lens' VolumesUserUploadedList' (Maybe Word32)
vuulMaxResults
  = lens _vuulMaxResults
      (\ s a -> s{_vuulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vuulFields :: Lens' VolumesUserUploadedList' (Maybe Text)
vuulFields
  = lens _vuulFields (\ s a -> s{_vuulFields = a})

instance GoogleAuth VolumesUserUploadedList' where
        authKey = vuulKey . _Just
        authToken = vuulOAuthToken . _Just

instance GoogleRequest VolumesUserUploadedList' where
        type Rs VolumesUserUploadedList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesUserUploadedList'{..}
          = go _vuulLocale _vuulMaxResults _vuulProcessingState
              _vuulSource
              _vuulStartIndex
              _vuulVolumeId
              _vuulQuotaUser
              (Just _vuulPrettyPrint)
              _vuulUserIP
              _vuulFields
              _vuulKey
              _vuulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesUserUploadedListResource)
                      r
                      u
