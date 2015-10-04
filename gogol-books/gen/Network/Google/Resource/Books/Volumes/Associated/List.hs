{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Volumes.Associated.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of associated books.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesAssociatedList@.
module Network.Google.Resource.Books.Volumes.Associated.List
    (
    -- * REST Resource
      VolumesAssociatedListResource

    -- * Creating a Request
    , volumesAssociatedList'
    , VolumesAssociatedList'

    -- * Request Lenses
    , valQuotaUser
    , valPrettyPrint
    , valUserIP
    , valLocale
    , valMaxAllowedMaturityRating
    , valKey
    , valVolumeId
    , valSource
    , valOAuthToken
    , valFields
    , valAssociation
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesAssociatedList@ which the
-- 'VolumesAssociatedList'' request conforms to.
type VolumesAssociatedListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "associated" :>
           QueryParam "locale" Text :>
             QueryParam "maxAllowedMaturityRating"
               BooksVolumesAssociatedListMaxAllowedMaturityRating
               :>
               QueryParam "source" Text :>
                 QueryParam "association" Association :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of associated books.
--
-- /See:/ 'volumesAssociatedList'' smart constructor.
data VolumesAssociatedList' = VolumesAssociatedList'
    { _valQuotaUser                :: !(Maybe Text)
    , _valPrettyPrint              :: !Bool
    , _valUserIP                   :: !(Maybe Text)
    , _valLocale                   :: !(Maybe Text)
    , _valMaxAllowedMaturityRating :: !(Maybe BooksVolumesAssociatedListMaxAllowedMaturityRating)
    , _valKey                      :: !(Maybe Key)
    , _valVolumeId                 :: !Text
    , _valSource                   :: !(Maybe Text)
    , _valOAuthToken               :: !(Maybe OAuthToken)
    , _valFields                   :: !(Maybe Text)
    , _valAssociation              :: !(Maybe Association)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesAssociatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'valQuotaUser'
--
-- * 'valPrettyPrint'
--
-- * 'valUserIP'
--
-- * 'valLocale'
--
-- * 'valMaxAllowedMaturityRating'
--
-- * 'valKey'
--
-- * 'valVolumeId'
--
-- * 'valSource'
--
-- * 'valOAuthToken'
--
-- * 'valFields'
--
-- * 'valAssociation'
volumesAssociatedList'
    :: Text -- ^ 'volumeId'
    -> VolumesAssociatedList'
volumesAssociatedList' pValVolumeId_ =
    VolumesAssociatedList'
    { _valQuotaUser = Nothing
    , _valPrettyPrint = True
    , _valUserIP = Nothing
    , _valLocale = Nothing
    , _valMaxAllowedMaturityRating = Nothing
    , _valKey = Nothing
    , _valVolumeId = pValVolumeId_
    , _valSource = Nothing
    , _valOAuthToken = Nothing
    , _valFields = Nothing
    , _valAssociation = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
valQuotaUser :: Lens' VolumesAssociatedList' (Maybe Text)
valQuotaUser
  = lens _valQuotaUser (\ s a -> s{_valQuotaUser = a})

-- | Returns response with indentations and line breaks.
valPrettyPrint :: Lens' VolumesAssociatedList' Bool
valPrettyPrint
  = lens _valPrettyPrint
      (\ s a -> s{_valPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
valUserIP :: Lens' VolumesAssociatedList' (Maybe Text)
valUserIP
  = lens _valUserIP (\ s a -> s{_valUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
valLocale :: Lens' VolumesAssociatedList' (Maybe Text)
valLocale
  = lens _valLocale (\ s a -> s{_valLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
valMaxAllowedMaturityRating :: Lens' VolumesAssociatedList' (Maybe BooksVolumesAssociatedListMaxAllowedMaturityRating)
valMaxAllowedMaturityRating
  = lens _valMaxAllowedMaturityRating
      (\ s a -> s{_valMaxAllowedMaturityRating = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
valKey :: Lens' VolumesAssociatedList' (Maybe Key)
valKey = lens _valKey (\ s a -> s{_valKey = a})

-- | ID of the source volume.
valVolumeId :: Lens' VolumesAssociatedList' Text
valVolumeId
  = lens _valVolumeId (\ s a -> s{_valVolumeId = a})

-- | String to identify the originator of this request.
valSource :: Lens' VolumesAssociatedList' (Maybe Text)
valSource
  = lens _valSource (\ s a -> s{_valSource = a})

-- | OAuth 2.0 token for the current user.
valOAuthToken :: Lens' VolumesAssociatedList' (Maybe OAuthToken)
valOAuthToken
  = lens _valOAuthToken
      (\ s a -> s{_valOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
valFields :: Lens' VolumesAssociatedList' (Maybe Text)
valFields
  = lens _valFields (\ s a -> s{_valFields = a})

-- | Association type.
valAssociation :: Lens' VolumesAssociatedList' (Maybe Association)
valAssociation
  = lens _valAssociation
      (\ s a -> s{_valAssociation = a})

instance GoogleAuth VolumesAssociatedList' where
        authKey = valKey . _Just
        authToken = valOAuthToken . _Just

instance GoogleRequest VolumesAssociatedList' where
        type Rs VolumesAssociatedList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesAssociatedList'{..}
          = go _valVolumeId _valLocale
              _valMaxAllowedMaturityRating
              _valSource
              _valAssociation
              _valQuotaUser
              (Just _valPrettyPrint)
              _valUserIP
              _valFields
              _valKey
              _valOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesAssociatedListResource)
                      r
                      u
