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
-- Module      : Network.Google.Resource.Books.Layers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the layer summary for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersGet@.
module Network.Google.Resource.Books.Layers.Get
    (
    -- * REST Resource
      LayersGetResource

    -- * Creating a Request
    , layersGet'
    , LayersGet'

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIP
    , lgContentVersion
    , lgKey
    , lgVolumeId
    , lgSource
    , lgOAuthToken
    , lgFields
    , lgSummaryId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersGet@ method which the
-- 'LayersGet'' request conforms to.
type LayersGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layersummary" :>
           Capture "summaryId" Text :>
             QueryParam "contentVersion" Text :>
               QueryParam "source" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] Layersummary

-- | Gets the layer summary for a volume.
--
-- /See:/ 'layersGet'' smart constructor.
data LayersGet' = LayersGet'
    { _lgQuotaUser      :: !(Maybe Text)
    , _lgPrettyPrint    :: !Bool
    , _lgUserIP         :: !(Maybe Text)
    , _lgContentVersion :: !(Maybe Text)
    , _lgKey            :: !(Maybe AuthKey)
    , _lgVolumeId       :: !Text
    , _lgSource         :: !(Maybe Text)
    , _lgOAuthToken     :: !(Maybe OAuthToken)
    , _lgFields         :: !(Maybe Text)
    , _lgSummaryId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIP'
--
-- * 'lgContentVersion'
--
-- * 'lgKey'
--
-- * 'lgVolumeId'
--
-- * 'lgSource'
--
-- * 'lgOAuthToken'
--
-- * 'lgFields'
--
-- * 'lgSummaryId'
layersGet'
    :: Text -- ^ 'volumeId'
    -> Text -- ^ 'summaryId'
    -> LayersGet'
layersGet' pLgVolumeId_ pLgSummaryId_ =
    LayersGet'
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIP = Nothing
    , _lgContentVersion = Nothing
    , _lgKey = Nothing
    , _lgVolumeId = pLgVolumeId_
    , _lgSource = Nothing
    , _lgOAuthToken = Nothing
    , _lgFields = Nothing
    , _lgSummaryId = pLgSummaryId_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LayersGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LayersGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIP :: Lens' LayersGet' (Maybe Text)
lgUserIP = lens _lgUserIP (\ s a -> s{_lgUserIP = a})

-- | The content version for the requested volume.
lgContentVersion :: Lens' LayersGet' (Maybe Text)
lgContentVersion
  = lens _lgContentVersion
      (\ s a -> s{_lgContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LayersGet' (Maybe AuthKey)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The volume to retrieve layers for.
lgVolumeId :: Lens' LayersGet' Text
lgVolumeId
  = lens _lgVolumeId (\ s a -> s{_lgVolumeId = a})

-- | String to identify the originator of this request.
lgSource :: Lens' LayersGet' (Maybe Text)
lgSource = lens _lgSource (\ s a -> s{_lgSource = a})

-- | OAuth 2.0 token for the current user.
lgOAuthToken :: Lens' LayersGet' (Maybe OAuthToken)
lgOAuthToken
  = lens _lgOAuthToken (\ s a -> s{_lgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LayersGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | The ID for the layer to get the summary for.
lgSummaryId :: Lens' LayersGet' Text
lgSummaryId
  = lens _lgSummaryId (\ s a -> s{_lgSummaryId = a})

instance GoogleAuth LayersGet' where
        _AuthKey = lgKey . _Just
        _AuthToken = lgOAuthToken . _Just

instance GoogleRequest LayersGet' where
        type Rs LayersGet' = Layersummary
        request = requestWith booksRequest
        requestWith rq LayersGet'{..}
          = go _lgVolumeId _lgSummaryId _lgContentVersion
              _lgSource
              _lgQuotaUser
              (Just _lgPrettyPrint)
              _lgUserIP
              _lgFields
              _lgKey
              _lgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LayersGetResource) rq
