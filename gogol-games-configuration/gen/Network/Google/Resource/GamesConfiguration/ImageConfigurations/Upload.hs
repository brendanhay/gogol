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
-- Module      : Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationImageConfigurationsUpload@.
module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
    (
    -- * REST Resource
      ImageConfigurationsUploadResource

    -- * Creating a Request
    , imageConfigurationsUpload'
    , ImageConfigurationsUpload'

    -- * Request Lenses
    , icuQuotaUser
    , icuResourceId
    , icuPrettyPrint
    , icuUserIP
    , icuMedia
    , icuImageType
    , icuKey
    , icuOAuthToken
    , icuFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationImageConfigurationsUpload@ which the
-- 'ImageConfigurationsUpload'' request conforms to.
type ImageConfigurationsUploadResource =
     "images" :>
       Capture "resourceId" Text :>
         "imageType" :>
           Capture "imageType"
             GamesConfigurationImageConfigurationsUploadImageType
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'imageConfigurationsUpload'' smart constructor.
data ImageConfigurationsUpload' = ImageConfigurationsUpload'
    { _icuQuotaUser   :: !(Maybe Text)
    , _icuResourceId  :: !Text
    , _icuPrettyPrint :: !Bool
    , _icuUserIP      :: !(Maybe Text)
    , _icuMedia       :: !Body
    , _icuImageType   :: !GamesConfigurationImageConfigurationsUploadImageType
    , _icuKey         :: !(Maybe Key)
    , _icuOAuthToken  :: !(Maybe OAuthToken)
    , _icuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageConfigurationsUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icuQuotaUser'
--
-- * 'icuResourceId'
--
-- * 'icuPrettyPrint'
--
-- * 'icuUserIP'
--
-- * 'icuMedia'
--
-- * 'icuImageType'
--
-- * 'icuKey'
--
-- * 'icuOAuthToken'
--
-- * 'icuFields'
imageConfigurationsUpload'
    :: Text -- ^ 'resourceId'
    -> Body -- ^ 'media'
    -> GamesConfigurationImageConfigurationsUploadImageType -- ^ 'imageType'
    -> ImageConfigurationsUpload'
imageConfigurationsUpload' pIcuResourceId_ pIcuMedia_ pIcuImageType_ =
    ImageConfigurationsUpload'
    { _icuQuotaUser = Nothing
    , _icuResourceId = pIcuResourceId_
    , _icuPrettyPrint = True
    , _icuUserIP = Nothing
    , _icuMedia = pIcuMedia_
    , _icuImageType = pIcuImageType_
    , _icuKey = Nothing
    , _icuOAuthToken = Nothing
    , _icuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
icuQuotaUser :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuQuotaUser
  = lens _icuQuotaUser (\ s a -> s{_icuQuotaUser = a})

-- | The ID of the resource used by this method.
icuResourceId :: Lens' ImageConfigurationsUpload' Text
icuResourceId
  = lens _icuResourceId
      (\ s a -> s{_icuResourceId = a})

-- | Returns response with indentations and line breaks.
icuPrettyPrint :: Lens' ImageConfigurationsUpload' Bool
icuPrettyPrint
  = lens _icuPrettyPrint
      (\ s a -> s{_icuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
icuUserIP :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuUserIP
  = lens _icuUserIP (\ s a -> s{_icuUserIP = a})

icuMedia :: Lens' ImageConfigurationsUpload' Body
icuMedia = lens _icuMedia (\ s a -> s{_icuMedia = a})

-- | Selects which image in a resource for this method.
icuImageType :: Lens' ImageConfigurationsUpload' GamesConfigurationImageConfigurationsUploadImageType
icuImageType
  = lens _icuImageType (\ s a -> s{_icuImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icuKey :: Lens' ImageConfigurationsUpload' (Maybe Key)
icuKey = lens _icuKey (\ s a -> s{_icuKey = a})

-- | OAuth 2.0 token for the current user.
icuOAuthToken :: Lens' ImageConfigurationsUpload' (Maybe OAuthToken)
icuOAuthToken
  = lens _icuOAuthToken
      (\ s a -> s{_icuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
icuFields :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuFields
  = lens _icuFields (\ s a -> s{_icuFields = a})

instance GoogleAuth ImageConfigurationsUpload' where
        authKey = icuKey . _Just
        authToken = icuOAuthToken . _Just

instance GoogleRequest ImageConfigurationsUpload'
         where
        type Rs ImageConfigurationsUpload' =
             ImageConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u ImageConfigurationsUpload'{..}
          = go _icuMedia _icuResourceId _icuImageType
              _icuQuotaUser
              (Just _icuPrettyPrint)
              _icuUserIP
              _icuFields
              _icuKey
              _icuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      r
                      u
