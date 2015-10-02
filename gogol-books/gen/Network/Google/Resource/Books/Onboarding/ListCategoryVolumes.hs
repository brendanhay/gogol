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
-- Module      : Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List available volumes under categories for onboarding experience.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksOnboardingListCategoryVolumes@.
module Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
    (
    -- * REST Resource
      OnboardingListCategoryVolumesResource

    -- * Creating a Request
    , onboardingListCategoryVolumes'
    , OnboardingListCategoryVolumes'

    -- * Request Lenses
    , olcvQuotaUser
    , olcvPrettyPrint
    , olcvUserIP
    , olcvLocale
    , olcvMaxAllowedMaturityRating
    , olcvKey
    , olcvCategoryId
    , olcvPageToken
    , olcvOAuthToken
    , olcvPageSize
    , olcvFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksOnboardingListCategoryVolumes@ which the
-- 'OnboardingListCategoryVolumes'' request conforms to.
type OnboardingListCategoryVolumesResource =
     "onboarding" :>
       "listCategoryVolumes" :>
         QueryParams "categoryId" Text :>
           QueryParam "locale" Text :>
             QueryParam "maxAllowedMaturityRating"
               BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating
               :>
               QueryParam "pageSize" Word32 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Volume2

-- | List available volumes under categories for onboarding experience.
--
-- /See:/ 'onboardingListCategoryVolumes'' smart constructor.
data OnboardingListCategoryVolumes' = OnboardingListCategoryVolumes'
    { _olcvQuotaUser                :: !(Maybe Text)
    , _olcvPrettyPrint              :: !Bool
    , _olcvUserIP                   :: !(Maybe Text)
    , _olcvLocale                   :: !(Maybe Text)
    , _olcvMaxAllowedMaturityRating :: !(Maybe BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating)
    , _olcvKey                      :: !(Maybe Key)
    , _olcvCategoryId               :: !(Maybe Text)
    , _olcvPageToken                :: !(Maybe Text)
    , _olcvOAuthToken               :: !(Maybe OAuthToken)
    , _olcvPageSize                 :: !(Maybe Word32)
    , _olcvFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnboardingListCategoryVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcvQuotaUser'
--
-- * 'olcvPrettyPrint'
--
-- * 'olcvUserIP'
--
-- * 'olcvLocale'
--
-- * 'olcvMaxAllowedMaturityRating'
--
-- * 'olcvKey'
--
-- * 'olcvCategoryId'
--
-- * 'olcvPageToken'
--
-- * 'olcvOAuthToken'
--
-- * 'olcvPageSize'
--
-- * 'olcvFields'
onboardingListCategoryVolumes'
    :: OnboardingListCategoryVolumes'
onboardingListCategoryVolumes' =
    OnboardingListCategoryVolumes'
    { _olcvQuotaUser = Nothing
    , _olcvPrettyPrint = True
    , _olcvUserIP = Nothing
    , _olcvLocale = Nothing
    , _olcvMaxAllowedMaturityRating = Nothing
    , _olcvKey = Nothing
    , _olcvCategoryId = Nothing
    , _olcvPageToken = Nothing
    , _olcvOAuthToken = Nothing
    , _olcvPageSize = Nothing
    , _olcvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olcvQuotaUser :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvQuotaUser
  = lens _olcvQuotaUser
      (\ s a -> s{_olcvQuotaUser = a})

-- | Returns response with indentations and line breaks.
olcvPrettyPrint :: Lens' OnboardingListCategoryVolumes' Bool
olcvPrettyPrint
  = lens _olcvPrettyPrint
      (\ s a -> s{_olcvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olcvUserIP :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvUserIP
  = lens _olcvUserIP (\ s a -> s{_olcvUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcvLocale :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvLocale
  = lens _olcvLocale (\ s a -> s{_olcvLocale = a})

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
olcvMaxAllowedMaturityRating :: Lens' OnboardingListCategoryVolumes' (Maybe BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating)
olcvMaxAllowedMaturityRating
  = lens _olcvMaxAllowedMaturityRating
      (\ s a -> s{_olcvMaxAllowedMaturityRating = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olcvKey :: Lens' OnboardingListCategoryVolumes' (Maybe Key)
olcvKey = lens _olcvKey (\ s a -> s{_olcvKey = a})

-- | List of category ids requested.
olcvCategoryId :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvCategoryId
  = lens _olcvCategoryId
      (\ s a -> s{_olcvCategoryId = a})

-- | The value of the nextToken from the previous page.
olcvPageToken :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvPageToken
  = lens _olcvPageToken
      (\ s a -> s{_olcvPageToken = a})

-- | OAuth 2.0 token for the current user.
olcvOAuthToken :: Lens' OnboardingListCategoryVolumes' (Maybe OAuthToken)
olcvOAuthToken
  = lens _olcvOAuthToken
      (\ s a -> s{_olcvOAuthToken = a})

-- | Number of maximum results per page to be included in the response.
olcvPageSize :: Lens' OnboardingListCategoryVolumes' (Maybe Word32)
olcvPageSize
  = lens _olcvPageSize (\ s a -> s{_olcvPageSize = a})

-- | Selector specifying which fields to include in a partial response.
olcvFields :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvFields
  = lens _olcvFields (\ s a -> s{_olcvFields = a})

instance GoogleAuth OnboardingListCategoryVolumes'
         where
        authKey = olcvKey . _Just
        authToken = olcvOAuthToken . _Just

instance GoogleRequest OnboardingListCategoryVolumes'
         where
        type Rs OnboardingListCategoryVolumes' = Volume2
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          OnboardingListCategoryVolumes'{..}
          = go _olcvCategoryId _olcvLocale
              _olcvMaxAllowedMaturityRating
              _olcvPageSize
              _olcvPageToken
              _olcvQuotaUser
              (Just _olcvPrettyPrint)
              _olcvUserIP
              _olcvFields
              _olcvKey
              _olcvOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy OnboardingListCategoryVolumesResource)
                      r
                      u
