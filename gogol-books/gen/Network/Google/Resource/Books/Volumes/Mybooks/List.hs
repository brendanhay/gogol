{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Volumes.Mybooks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of books in My Library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesMybooksList@.
module Books.Volumes.Mybooks.List
    (
    -- * REST Resource
      VolumesMybooksListAPI

    -- * Creating a Request
    , volumesMybooksList
    , VolumesMybooksList

    -- * Request Lenses
    , vmlProcessingState
    , vmlQuotaUser
    , vmlAcquireMethod
    , vmlPrettyPrint
    , vmlUserIp
    , vmlLocale
    , vmlKey
    , vmlSource
    , vmlOauthToken
    , vmlStartIndex
    , vmlMaxResults
    , vmlFields
    , vmlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesMybooksList@ which the
-- 'VolumesMybooksList' request conforms to.
type VolumesMybooksListAPI =
     "volumes" :>
       "mybooks" :>
         QueryParams "processingState" Text :>
           QueryParams "acquireMethod" Text :>
             QueryParam "locale" Text :>
               QueryParam "source" Text :>
                 QueryParam "startIndex" Word32 :>
                   QueryParam "maxResults" Word32 :> Get '[JSON] Volumes

-- | Return a list of books in My Library.
--
-- /See:/ 'volumesMybooksList' smart constructor.
data VolumesMybooksList = VolumesMybooksList
    { _vmlProcessingState :: !(Maybe Text)
    , _vmlQuotaUser       :: !(Maybe Text)
    , _vmlAcquireMethod   :: !(Maybe Text)
    , _vmlPrettyPrint     :: !Bool
    , _vmlUserIp          :: !(Maybe Text)
    , _vmlLocale          :: !(Maybe Text)
    , _vmlKey             :: !(Maybe Text)
    , _vmlSource          :: !(Maybe Text)
    , _vmlOauthToken      :: !(Maybe Text)
    , _vmlStartIndex      :: !(Maybe Word32)
    , _vmlMaxResults      :: !(Maybe Word32)
    , _vmlFields          :: !(Maybe Text)
    , _vmlAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesMybooksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmlProcessingState'
--
-- * 'vmlQuotaUser'
--
-- * 'vmlAcquireMethod'
--
-- * 'vmlPrettyPrint'
--
-- * 'vmlUserIp'
--
-- * 'vmlLocale'
--
-- * 'vmlKey'
--
-- * 'vmlSource'
--
-- * 'vmlOauthToken'
--
-- * 'vmlStartIndex'
--
-- * 'vmlMaxResults'
--
-- * 'vmlFields'
--
-- * 'vmlAlt'
volumesMybooksList
    :: VolumesMybooksList
volumesMybooksList =
    VolumesMybooksList
    { _vmlProcessingState = Nothing
    , _vmlQuotaUser = Nothing
    , _vmlAcquireMethod = Nothing
    , _vmlPrettyPrint = True
    , _vmlUserIp = Nothing
    , _vmlLocale = Nothing
    , _vmlKey = Nothing
    , _vmlSource = Nothing
    , _vmlOauthToken = Nothing
    , _vmlStartIndex = Nothing
    , _vmlMaxResults = Nothing
    , _vmlFields = Nothing
    , _vmlAlt = "json"
    }

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
vmlProcessingState :: Lens' VolumesMybooksList' (Maybe Text)
vmlProcessingState
  = lens _vmlProcessingState
      (\ s a -> s{_vmlProcessingState = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vmlQuotaUser :: Lens' VolumesMybooksList' (Maybe Text)
vmlQuotaUser
  = lens _vmlQuotaUser (\ s a -> s{_vmlQuotaUser = a})

-- | How the book was aquired
vmlAcquireMethod :: Lens' VolumesMybooksList' (Maybe Text)
vmlAcquireMethod
  = lens _vmlAcquireMethod
      (\ s a -> s{_vmlAcquireMethod = a})

-- | Returns response with indentations and line breaks.
vmlPrettyPrint :: Lens' VolumesMybooksList' Bool
vmlPrettyPrint
  = lens _vmlPrettyPrint
      (\ s a -> s{_vmlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vmlUserIp :: Lens' VolumesMybooksList' (Maybe Text)
vmlUserIp
  = lens _vmlUserIp (\ s a -> s{_vmlUserIp = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex:\'en_US\'. Used for
-- generating recommendations.
vmlLocale :: Lens' VolumesMybooksList' (Maybe Text)
vmlLocale
  = lens _vmlLocale (\ s a -> s{_vmlLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vmlKey :: Lens' VolumesMybooksList' (Maybe Text)
vmlKey = lens _vmlKey (\ s a -> s{_vmlKey = a})

-- | String to identify the originator of this request.
vmlSource :: Lens' VolumesMybooksList' (Maybe Text)
vmlSource
  = lens _vmlSource (\ s a -> s{_vmlSource = a})

-- | OAuth 2.0 token for the current user.
vmlOauthToken :: Lens' VolumesMybooksList' (Maybe Text)
vmlOauthToken
  = lens _vmlOauthToken
      (\ s a -> s{_vmlOauthToken = a})

-- | Index of the first result to return (starts at 0)
vmlStartIndex :: Lens' VolumesMybooksList' (Maybe Word32)
vmlStartIndex
  = lens _vmlStartIndex
      (\ s a -> s{_vmlStartIndex = a})

-- | Maximum number of results to return.
vmlMaxResults :: Lens' VolumesMybooksList' (Maybe Word32)
vmlMaxResults
  = lens _vmlMaxResults
      (\ s a -> s{_vmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vmlFields :: Lens' VolumesMybooksList' (Maybe Text)
vmlFields
  = lens _vmlFields (\ s a -> s{_vmlFields = a})

-- | Data format for the response.
vmlAlt :: Lens' VolumesMybooksList' Text
vmlAlt = lens _vmlAlt (\ s a -> s{_vmlAlt = a})

instance GoogleRequest VolumesMybooksList' where
        type Rs VolumesMybooksList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesMybooksList{..}
          = go _vmlProcessingState _vmlQuotaUser
              _vmlAcquireMethod
              _vmlPrettyPrint
              _vmlUserIp
              _vmlLocale
              _vmlKey
              _vmlSource
              _vmlOauthToken
              _vmlStartIndex
              _vmlMaxResults
              _vmlFields
              _vmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesMybooksListAPI)
                      r
                      u
