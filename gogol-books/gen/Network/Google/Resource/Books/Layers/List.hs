{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Layers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the layer summaries for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersList@.
module Network.Google.Resource.Books.Layers.List
    (
    -- * REST Resource
      LayersListResource

    -- * Creating a Request
    , layersList'
    , LayersList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIP
    , llContentVersion
    , llKey
    , llVolumeId
    , llSource
    , llPageToken
    , llOAuthToken
    , llMaxResults
    , llFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersList@ which the
-- 'LayersList'' request conforms to.
type LayersListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layersummary" :>
           QueryParam "contentVersion" Text :>
             QueryParam "source" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] Layersummaries

-- | List the layer summaries for a volume.
--
-- /See:/ 'layersList'' smart constructor.
data LayersList' = LayersList'
    { _llQuotaUser      :: !(Maybe Text)
    , _llPrettyPrint    :: !Bool
    , _llUserIP         :: !(Maybe Text)
    , _llContentVersion :: !(Maybe Text)
    , _llKey            :: !(Maybe Key)
    , _llVolumeId       :: !Text
    , _llSource         :: !(Maybe Text)
    , _llPageToken      :: !(Maybe Text)
    , _llOAuthToken     :: !(Maybe OAuthToken)
    , _llMaxResults     :: !(Maybe Word32)
    , _llFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIP'
--
-- * 'llContentVersion'
--
-- * 'llKey'
--
-- * 'llVolumeId'
--
-- * 'llSource'
--
-- * 'llPageToken'
--
-- * 'llOAuthToken'
--
-- * 'llMaxResults'
--
-- * 'llFields'
layersList'
    :: Text -- ^ 'volumeId'
    -> LayersList'
layersList' pLlVolumeId_ =
    LayersList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIP = Nothing
    , _llContentVersion = Nothing
    , _llKey = Nothing
    , _llVolumeId = pLlVolumeId_
    , _llSource = Nothing
    , _llPageToken = Nothing
    , _llOAuthToken = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LayersList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LayersList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIP :: Lens' LayersList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

-- | The content version for the requested volume.
llContentVersion :: Lens' LayersList' (Maybe Text)
llContentVersion
  = lens _llContentVersion
      (\ s a -> s{_llContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LayersList' (Maybe Key)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | The volume to retrieve layers for.
llVolumeId :: Lens' LayersList' Text
llVolumeId
  = lens _llVolumeId (\ s a -> s{_llVolumeId = a})

-- | String to identify the originator of this request.
llSource :: Lens' LayersList' (Maybe Text)
llSource = lens _llSource (\ s a -> s{_llSource = a})

-- | The value of the nextToken from the previous page.
llPageToken :: Lens' LayersList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | OAuth 2.0 token for the current user.
llOAuthToken :: Lens' LayersList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | Maximum number of results to return
llMaxResults :: Lens' LayersList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LayersList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LayersList' where
        authKey = llKey . _Just
        authToken = llOAuthToken . _Just

instance GoogleRequest LayersList' where
        type Rs LayersList' = Layersummaries
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersList'{..}
          = go _llVolumeId _llContentVersion _llSource
              _llPageToken
              _llMaxResults
              _llQuotaUser
              (Just _llPrettyPrint)
              _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy LayersListResource)
                      r
                      u
