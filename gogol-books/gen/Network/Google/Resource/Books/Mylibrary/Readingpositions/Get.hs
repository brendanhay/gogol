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
-- Module      : Network.Google.Resource.Books.Mylibrary.Readingpositions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryReadingpositionsGet@.
module Network.Google.Resource.Books.Mylibrary.Readingpositions.Get
    (
    -- * REST Resource
      MylibraryReadingpositionsGetResource

    -- * Creating a Request
    , mylibraryReadingpositionsGet'
    , MylibraryReadingpositionsGet'

    -- * Request Lenses
    , mrgQuotaUser
    , mrgPrettyPrint
    , mrgUserIp
    , mrgContentVersion
    , mrgKey
    , mrgVolumeId
    , mrgSource
    , mrgOauthToken
    , mrgFields
    , mrgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryReadingpositionsGet@ which the
-- 'MylibraryReadingpositionsGet'' request conforms to.
type MylibraryReadingpositionsGetResource =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "contentVersion" Text :>
                   QueryParam "key" Text :>
                     QueryParam "source" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] ReadingPosition

-- | Retrieves my reading position information for a volume.
--
-- /See:/ 'mylibraryReadingpositionsGet'' smart constructor.
data MylibraryReadingpositionsGet' = MylibraryReadingpositionsGet'
    { _mrgQuotaUser      :: !(Maybe Text)
    , _mrgPrettyPrint    :: !Bool
    , _mrgUserIp         :: !(Maybe Text)
    , _mrgContentVersion :: !(Maybe Text)
    , _mrgKey            :: !(Maybe Text)
    , _mrgVolumeId       :: !Text
    , _mrgSource         :: !(Maybe Text)
    , _mrgOauthToken     :: !(Maybe Text)
    , _mrgFields         :: !(Maybe Text)
    , _mrgAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryReadingpositionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrgQuotaUser'
--
-- * 'mrgPrettyPrint'
--
-- * 'mrgUserIp'
--
-- * 'mrgContentVersion'
--
-- * 'mrgKey'
--
-- * 'mrgVolumeId'
--
-- * 'mrgSource'
--
-- * 'mrgOauthToken'
--
-- * 'mrgFields'
--
-- * 'mrgAlt'
mylibraryReadingpositionsGet'
    :: Text -- ^ 'volumeId'
    -> MylibraryReadingpositionsGet'
mylibraryReadingpositionsGet' pMrgVolumeId_ =
    MylibraryReadingpositionsGet'
    { _mrgQuotaUser = Nothing
    , _mrgPrettyPrint = True
    , _mrgUserIp = Nothing
    , _mrgContentVersion = Nothing
    , _mrgKey = Nothing
    , _mrgVolumeId = pMrgVolumeId_
    , _mrgSource = Nothing
    , _mrgOauthToken = Nothing
    , _mrgFields = Nothing
    , _mrgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mrgQuotaUser :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgQuotaUser
  = lens _mrgQuotaUser (\ s a -> s{_mrgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mrgPrettyPrint :: Lens' MylibraryReadingpositionsGet' Bool
mrgPrettyPrint
  = lens _mrgPrettyPrint
      (\ s a -> s{_mrgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mrgUserIp :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgUserIp
  = lens _mrgUserIp (\ s a -> s{_mrgUserIp = a})

-- | Volume content version for which this reading position is requested.
mrgContentVersion :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgContentVersion
  = lens _mrgContentVersion
      (\ s a -> s{_mrgContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mrgKey :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgKey = lens _mrgKey (\ s a -> s{_mrgKey = a})

-- | ID of volume for which to retrieve a reading position.
mrgVolumeId :: Lens' MylibraryReadingpositionsGet' Text
mrgVolumeId
  = lens _mrgVolumeId (\ s a -> s{_mrgVolumeId = a})

-- | String to identify the originator of this request.
mrgSource :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgSource
  = lens _mrgSource (\ s a -> s{_mrgSource = a})

-- | OAuth 2.0 token for the current user.
mrgOauthToken :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgOauthToken
  = lens _mrgOauthToken
      (\ s a -> s{_mrgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mrgFields :: Lens' MylibraryReadingpositionsGet' (Maybe Text)
mrgFields
  = lens _mrgFields (\ s a -> s{_mrgFields = a})

-- | Data format for the response.
mrgAlt :: Lens' MylibraryReadingpositionsGet' Alt
mrgAlt = lens _mrgAlt (\ s a -> s{_mrgAlt = a})

instance GoogleRequest MylibraryReadingpositionsGet'
         where
        type Rs MylibraryReadingpositionsGet' =
             ReadingPosition
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryReadingpositionsGet'{..}
          = go _mrgQuotaUser (Just _mrgPrettyPrint) _mrgUserIp
              _mrgContentVersion
              _mrgKey
              _mrgVolumeId
              _mrgSource
              _mrgOauthToken
              _mrgFields
              (Just _mrgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryReadingpositionsGetResource)
                      r
                      u
