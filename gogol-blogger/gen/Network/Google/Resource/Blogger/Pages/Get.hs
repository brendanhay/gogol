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
-- Module      : Network.Google.Resource.Blogger.Pages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesGet@.
module Network.Google.Resource.Blogger.Pages.Get
    (
    -- * REST Resource
      PagesGetResource

    -- * Creating a Request
    , pagesGet'
    , PagesGet'

    -- * Request Lenses
    , pggQuotaUser
    , pggPrettyPrint
    , pggUserIP
    , pggBlogId
    , pggPageId
    , pggKey
    , pggView
    , pggOAuthToken
    , pggFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesGet@ which the
-- 'PagesGet'' request conforms to.
type PagesGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "view" BloggerPagesGetView :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Page

-- | Gets one blog page by ID.
--
-- /See:/ 'pagesGet'' smart constructor.
data PagesGet' = PagesGet'
    { _pggQuotaUser   :: !(Maybe Text)
    , _pggPrettyPrint :: !Bool
    , _pggUserIP      :: !(Maybe Text)
    , _pggBlogId      :: !Text
    , _pggPageId      :: !Text
    , _pggKey         :: !(Maybe Key)
    , _pggView        :: !(Maybe BloggerPagesGetView)
    , _pggOAuthToken  :: !(Maybe OAuthToken)
    , _pggFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIP'
--
-- * 'pggBlogId'
--
-- * 'pggPageId'
--
-- * 'pggKey'
--
-- * 'pggView'
--
-- * 'pggOAuthToken'
--
-- * 'pggFields'
pagesGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesGet'
pagesGet' pPggBlogId_ pPggPageId_ =
    PagesGet'
    { _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIP = Nothing
    , _pggBlogId = pPggBlogId_
    , _pggPageId = pPggPageId_
    , _pggKey = Nothing
    , _pggView = Nothing
    , _pggOAuthToken = Nothing
    , _pggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' PagesGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' PagesGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIP :: Lens' PagesGet' (Maybe Text)
pggUserIP
  = lens _pggUserIP (\ s a -> s{_pggUserIP = a})

-- | ID of the blog containing the page.
pggBlogId :: Lens' PagesGet' Text
pggBlogId
  = lens _pggBlogId (\ s a -> s{_pggBlogId = a})

-- | The ID of the page to get.
pggPageId :: Lens' PagesGet' Text
pggPageId
  = lens _pggPageId (\ s a -> s{_pggPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' PagesGet' (Maybe Key)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

pggView :: Lens' PagesGet' (Maybe BloggerPagesGetView)
pggView = lens _pggView (\ s a -> s{_pggView = a})

-- | OAuth 2.0 token for the current user.
pggOAuthToken :: Lens' PagesGet' (Maybe OAuthToken)
pggOAuthToken
  = lens _pggOAuthToken
      (\ s a -> s{_pggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PagesGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

instance GoogleAuth PagesGet' where
        authKey = pggKey . _Just
        authToken = pggOAuthToken . _Just

instance GoogleRequest PagesGet' where
        type Rs PagesGet' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesGet'{..}
          = go _pggQuotaUser (Just _pggPrettyPrint) _pggUserIP
              _pggBlogId
              _pggPageId
              _pggKey
              _pggView
              _pggOAuthToken
              _pggFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesGetResource) r
                      u
