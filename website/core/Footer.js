/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

const React = require('react')

class Footer extends React.Component {
  docUrl (doc, language) {
    const baseUrl = this.props.config.baseUrl
    const docsUrl = this.props.config.docsUrl
    const docsPart = `${docsUrl ? `${docsUrl}/` : ''}`
    const langPart = `${language ? `${language}/` : ''}`
    return `${baseUrl}${docsPart}${langPart}${doc}`
  }

  pageUrl (doc, language) {
    const baseUrl = this.props.config.baseUrl
    return baseUrl + (language ? `${language}/` : '') + doc
  }

  render () {
    return (
      <footer className="nav-footer" id="footer">
        <section className="sitemap">
          <a href={this.props.config.baseUrl} className="nav-home">
            {this.props.config.footerIcon && (
              <img
                src={this.props.config.baseUrl + this.props.config.footerIcon}
                alt={this.props.config.title}
                width="66"
                height="58"
              />
            )}
          </a>
          <div>
            <h5>User Docs</h5>
            <a href={this.docUrl('1-1-introduction.html', this.props.language)}>
              Getting started
            </a>
          </div>
          <div>
            <h5>Demo Websites</h5>
            <a href="https://extern18.gruene.ch/musterperson">Personal Website</a>
            <a href="https://gruene.ch/">Party Website</a>
          </div>
          <div>
            <h5>Developers</h5>
            <a href={this.props.config.repoUrl}>The WordPress Theme on
              GitHub</a>
            <a href={this.props.config.repoUrl}>The Docs on GitHub</a>
          </div>
        </section>

        <a
          href="https://gruene.ch"
          target="_blank"
          rel="noreferrer noopener"
          className="fbOpenSource">
          <img
            src={`${this.props.config.baseUrl}img/logo_bw.png`}
            alt="GRÜNE Schweiz | Les VERTS suisses"
            width="170"
          />
        </a>
        <section className="copyright">{this.props.config.copyright}</section>
      </footer>
    )
  }
}

module.exports = Footer
