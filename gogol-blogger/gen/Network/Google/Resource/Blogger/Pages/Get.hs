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
    , pggUserIp
    , pggBlogId
    , pggPageId
    , pggKey
    , pggView
    , pggOauthToken
    , pggFields
    , pggAlt
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
                   QueryParam "key" Text :>
                     QueryParam "view" BloggerPagesGetView :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Page

-- | Gets one blog page by ID.
--
-- /See:/ 'pagesGet'' smart constructor.
data PagesGet' = PagesGet'
    { _pggQuotaUser   :: !(Maybe Text)
    , _pggPrettyPrint :: !Bool
    , _pggUserIp      :: !(Maybe Text)
    , _pggBlogId      :: !Text
    , _pggPageId      :: !Text
    , _pggKey         :: !(Maybe Text)
    , _pggView        :: !(Maybe BloggerPagesGetView)
    , _pggOauthToken  :: !(Maybe Text)
    , _pggFields      :: !(Maybe Text)
    , _pggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIp'
--
-- * 'pggBlogId'
--
-- * 'pggPageId'
--
-- * 'pggKey'
--
-- * 'pggView'
--
-- * 'pggOauthToken'
--
-- * 'pggFields'
--
-- * 'pggAlt'
pagesGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesGet'
pagesGet' pPggBlogId_ pPggPageId_ =
    PagesGet'
    { _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIp = Nothing
    , _pggBlogId = pPggBlogId_
    , _pggPageId = pPggPageId_
    , _pggKey = Nothing
    , _pggView = Nothing
    , _pggOauthToken = Nothing
    , _pggFields = Nothing
    , _pggAlt = JSON
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
pggUserIp :: Lens' PagesGet' (Maybe Text)
pggUserIp
  = lens _pggUserIp (\ s a -> s{_pggUserIp = a})

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
pggKey :: Lens' PagesGet' (Maybe Text)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

pggView :: Lens' PagesGet' (Maybe BloggerPagesGetView)
pggView = lens _pggView (\ s a -> s{_pggView = a})

-- | OAuth 2.0 token for the current user.
pggOauthToken :: Lens' PagesGet' (Maybe Text)
pggOauthToken
  = lens _pggOauthToken
      (\ s a -> s{_pggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PagesGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

-- | Data format for the response.
pggAlt :: Lens' PagesGet' Alt
pggAlt = lens _pggAlt (\ s a -> s{_pggAlt = a})

instance GoogleRequest PagesGet' where
        type Rs PagesGet' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesGet'{..}
          = go _pggQuotaUser (Just _pggPrettyPrint) _pggUserIp
              _pggBlogId
              _pggPageId
              _pggKey
              _pggView
              _pggOauthToken
              _pggFields
              (Just _pggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesGetResource) r
                      u
