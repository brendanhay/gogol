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
-- Module      : Network.Google.Resource.Books.Volumes.Useruploaded.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of books uploaded by the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesUseruploadedList@.
module Network.Google.Resource.Books.Volumes.Useruploaded.List
    (
    -- * REST Resource
      VolumesUseruploadedListResource

    -- * Creating a Request
    , volumesUseruploadedList'
    , VolumesUseruploadedList'

    -- * Request Lenses
    , vulProcessingState
    , vulQuotaUser
    , vulPrettyPrint
    , vulUserIp
    , vulLocale
    , vulKey
    , vulVolumeId
    , vulSource
    , vulOauthToken
    , vulStartIndex
    , vulMaxResults
    , vulFields
    , vulAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesUseruploadedList@ which the
-- 'VolumesUseruploadedList'' request conforms to.
type VolumesUseruploadedListResource =
     "volumes" :>
       "useruploaded" :>
         QueryParams "processingState"
           BooksVolumesUseruploadedListProcessingState
           :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "key" Text :>
                     QueryParams "volumeId" Text :>
                       QueryParam "source" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "startIndex" Word32 :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] Volumes

-- | Return a list of books uploaded by the current user.
--
-- /See:/ 'volumesUseruploadedList'' smart constructor.
data VolumesUseruploadedList' = VolumesUseruploadedList'
    { _vulProcessingState :: !(Maybe BooksVolumesUseruploadedListProcessingState)
    , _vulQuotaUser       :: !(Maybe Text)
    , _vulPrettyPrint     :: !Bool
    , _vulUserIp          :: !(Maybe Text)
    , _vulLocale          :: !(Maybe Text)
    , _vulKey             :: !(Maybe Text)
    , _vulVolumeId        :: !(Maybe Text)
    , _vulSource          :: !(Maybe Text)
    , _vulOauthToken      :: !(Maybe Text)
    , _vulStartIndex      :: !(Maybe Word32)
    , _vulMaxResults      :: !(Maybe Word32)
    , _vulFields          :: !(Maybe Text)
    , _vulAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesUseruploadedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vulProcessingState'
--
-- * 'vulQuotaUser'
--
-- * 'vulPrettyPrint'
--
-- * 'vulUserIp'
--
-- * 'vulLocale'
--
-- * 'vulKey'
--
-- * 'vulVolumeId'
--
-- * 'vulSource'
--
-- * 'vulOauthToken'
--
-- * 'vulStartIndex'
--
-- * 'vulMaxResults'
--
-- * 'vulFields'
--
-- * 'vulAlt'
volumesUseruploadedList'
    :: VolumesUseruploadedList'
volumesUseruploadedList' =
    VolumesUseruploadedList'
    { _vulProcessingState = Nothing
    , _vulQuotaUser = Nothing
    , _vulPrettyPrint = True
    , _vulUserIp = Nothing
    , _vulLocale = Nothing
    , _vulKey = Nothing
    , _vulVolumeId = Nothing
    , _vulSource = Nothing
    , _vulOauthToken = Nothing
    , _vulStartIndex = Nothing
    , _vulMaxResults = Nothing
    , _vulFields = Nothing
    , _vulAlt = JSON
    }

-- | The processing state of the user uploaded volumes to be returned.
vulProcessingState :: Lens' VolumesUseruploadedList' (Maybe BooksVolumesUseruploadedListProcessingState)
vulProcessingState
  = lens _vulProcessingState
      (\ s a -> s{_vulProcessingState = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vulQuotaUser :: Lens' VolumesUseruploadedList' (Maybe Text)
vulQuotaUser
  = lens _vulQuotaUser (\ s a -> s{_vulQuotaUser = a})

-- | Returns response with indentations and line breaks.
vulPrettyPrint :: Lens' VolumesUseruploadedList' Bool
vulPrettyPrint
  = lens _vulPrettyPrint
      (\ s a -> s{_vulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vulUserIp :: Lens' VolumesUseruploadedList' (Maybe Text)
vulUserIp
  = lens _vulUserIp (\ s a -> s{_vulUserIp = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vulLocale :: Lens' VolumesUseruploadedList' (Maybe Text)
vulLocale
  = lens _vulLocale (\ s a -> s{_vulLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vulKey :: Lens' VolumesUseruploadedList' (Maybe Text)
vulKey = lens _vulKey (\ s a -> s{_vulKey = a})

-- | The ids of the volumes to be returned. If not specified all that match
-- the processingState are returned.
vulVolumeId :: Lens' VolumesUseruploadedList' (Maybe Text)
vulVolumeId
  = lens _vulVolumeId (\ s a -> s{_vulVolumeId = a})

-- | String to identify the originator of this request.
vulSource :: Lens' VolumesUseruploadedList' (Maybe Text)
vulSource
  = lens _vulSource (\ s a -> s{_vulSource = a})

-- | OAuth 2.0 token for the current user.
vulOauthToken :: Lens' VolumesUseruploadedList' (Maybe Text)
vulOauthToken
  = lens _vulOauthToken
      (\ s a -> s{_vulOauthToken = a})

-- | Index of the first result to return (starts at 0)
vulStartIndex :: Lens' VolumesUseruploadedList' (Maybe Word32)
vulStartIndex
  = lens _vulStartIndex
      (\ s a -> s{_vulStartIndex = a})

-- | Maximum number of results to return.
vulMaxResults :: Lens' VolumesUseruploadedList' (Maybe Word32)
vulMaxResults
  = lens _vulMaxResults
      (\ s a -> s{_vulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vulFields :: Lens' VolumesUseruploadedList' (Maybe Text)
vulFields
  = lens _vulFields (\ s a -> s{_vulFields = a})

-- | Data format for the response.
vulAlt :: Lens' VolumesUseruploadedList' Alt
vulAlt = lens _vulAlt (\ s a -> s{_vulAlt = a})

instance GoogleRequest VolumesUseruploadedList' where
        type Rs VolumesUseruploadedList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesUseruploadedList'{..}
          = go _vulProcessingState _vulQuotaUser
              (Just _vulPrettyPrint)
              _vulUserIp
              _vulLocale
              _vulKey
              _vulVolumeId
              _vulSource
              _vulOauthToken
              _vulStartIndex
              _vulMaxResults
              _vulFields
              (Just _vulAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesUseruploadedListResource)
                      r
                      u
